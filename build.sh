#!/bin/bash

set -e

set -x

rm -rf output

mvn clean package -Phadoop-2.6 -Dhadoop.version=2.6.0-cdh5.4.4-bd3 -DskipTests -Dmaven.javadoc.skip -Dfindbugs.skip -Dcheckstyle.skip -Dlicense.skip

mkdir -p output

cp -R bin output/

cp -R conf output/

cp -R libexec output/

cp -R integration output/

cp -R assembly output/

cp -R logs output/

