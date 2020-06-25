#!/bin/bash -e

GROUPID="com.mystuff"
ARTIFACTPREFIX="support"
VERSION="0.0.1"

function install()
{
     # find the filename, without path and extension
     filename=$(basename -- "$1")
     extension="${filename##*.}"
     filename="${filename%.*}"
     
     # install the jar into the local maven repo
     mvn install:install-file \
        -Dfile=$1 \
        -DgroupId=$GROUPID \
        -DartifactId=$ARTIFACTPREFIX.$filename \
        -Dversion=$VERSION \
        -Dpackaging=jar \
        -DgeneratePom=true
}

function test()
{
     filename=$(basename -- "$1")
     extension="${filename##*.}"
     filename="${filename%.*}"
     echo $filename
}

# check all sub directories for jar files
for result in $(find . -name '*.jar'); do
     #install $result
     test $result
done

