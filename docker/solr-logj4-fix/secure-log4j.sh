#!/bin/bash
cd /
JAR_FILES=$(find $(ls . | grep -v '^proc') -name "*log4j*core*jar")
echo $JAR_FILES
# opt/solr-8.10.1/contrib/prometheus-exporter/lib/log4j-core-2.14.1.jar
# opt/solr-8.10.1/server/lib/ext/log4j-core-2.14.1.jar

apt-get update && apt-get install zip

# Check it's there
for file in $JAR_FILES; do
    echo "check1 $file"
    zipinfo "$file" | grep -F 'JndiLookup.class'
done

# Delete the class file
for file in $JAR_FILES; do
    echo "Deleting from $file"
    zip -q -d "$file" org/apache/logging/log4j/core/lookup/JndiLookup.class
done

# Check it's not there
for file in $JAR_FILES; do
    echo "check2 $file"
    zipinfo "$file" | grep -F 'JndiLookup.class'
done

exit 0