#!/bin/sh -l

if [ -z "$INPUT_VERSION" ]; then
	wget -O /tmp/plantuml.jar "https://github.com/plantuml/plantuml/releases/download/v1.2023.4/plantuml-1.2023.4.jar"
else
	wget -O /tmp/plantuml.jar "https://github.com/plantuml/plantuml/releases/download/v${INPUT_VERSION}/plantuml-${INPUT_VERSION}.jar"
fi

java -jar /tmp/plantuml.jar "$@"
