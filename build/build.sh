#!/bin/bash
set -e

#Setup arguments
RESULTS_FOLDER="results"
if [ $# == 0 ]; then
	VERSION=bleedingEdge
else
	VERSION=$1
fi


#Work in temporal directory
if [ -a $RESULTS_FOLDER ]; then
		echo "cannot create directory named \""$RESULTS_FOLDER"\": file already exists"
		exit 1
fi

mkdir $RESULTS_FOLDER
cd $RESULTS_FOLDER

#Load image for this project

wget -O - get.pharo.org/20+vm | bash
./pharo Pharo.image save PharoCandleBootstrap --delete-old



#Load stable version of the monticello configuration, according to this git sources
REPO=http://smalltalkhub.com/mc/Guille/Seed/main
./pharo PharoCandleBootstrap.image config $REPO ConfigurationOfHazelnut --install=$VERSION

echo "Configuration Loaded. Opening script..."

echo -e "
Workspace openContents: '\"I am a builder for a Pharo Candle system. I bootstrap the system using an object space. You configure myself by providing mi a kernelSpec, and sending me the message #buildKernel.\"

\"Load a seed from the folder of the downloaded sources\"
seed := PharoCandleSeed new
    fromDirectoryNamed: ''../source'';
    buildSeed.

\"Create an object space that will use an AST evaluator to run some code\"
objectSpace := AtObjectSpace new.
objectSpace worldConfiguration: OzPharoCandle world.
objectSpace interpreter: (AtASTEvaluator new codeProvider: seed; yourself).

\"Create a builder, and tell it to bootstrap. Voilá, the objectSpace will be full\"
builder := PharoCandleBuilder new.
builder objectSpace: objectSpace.
builder kernelSpec: seed.
builder	buildKernel.

\"Browse me\"
objectSpace browse.'.
Smalltalk snapshot: true andQuit: true." > ./script.st

./pharo PharoCandleBootstrap.image script.st
rm script.st
rm PharoDebug.log
echo "Script created and loaded. Finished! :D"
#./pharo $JOB_NAME.image test --junit-xml-output "Seed.*"