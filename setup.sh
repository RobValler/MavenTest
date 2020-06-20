#!/bin/bash -e

mvn install:install-file \
   -Dfile=jars/JarTest-1.0-SNAPSHOT.jar \
   -DgroupId=com.mylib \
   -DartifactId=mylib-core \
   -Dversion=0.0.1 \
   -Dpackaging=jar \
   -DgeneratePom=true

mvn install:install-file \
   -Dfile=jars/JarTest_MOO-1.0-SNAPSHOT.jar \
   -DgroupId=com.mylib \
   -DartifactId=mylib-core-moo \
   -Dversion=0.0.1 \
   -Dpackaging=jar \
   -DgeneratePom=true


