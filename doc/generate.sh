#!/bin/bash

widoco_jar=/opt/widoco/widoco-1.4.20-jar-with-dependencies_JDK-11.jar

java -jar  $widoco_jar \
            -ontFile ../dggrs-ontology.ttl \
            -outFolder dggrs-ontology \
            -confFile dggrs-ontology.config \
            -uniteSections \
            -webVowl \
            -rewriteAll

java -jar  $widoco_jar \
            -ontFile ../system.ttl \
            -outFolder system \
            -confFile system.config \
            -uniteSections \
            -webVowl \
            -rewriteAll

java -jar  $widoco_jar \
            -ontFile ../implement.ttl \
            -outFolder implement \
            -confFile implement.config \
            -uniteSections \
            -webVowl \
            -rewriteAll

mv dggrs-ontology/doc/* dggrs-ontology/
rm -Rf dggrs-ontology/doc

mv system/doc/* system/
rm -Rf system/doc

mv implement/doc/* implement/
rm -Rf implement/doc

