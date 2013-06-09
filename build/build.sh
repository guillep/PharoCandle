#Load image for this project
wget -qO - http://get.pharo.org/20+vm | bash

#Load stable version of the monticello configuration, according to this git sources
REPO=http://smalltalkhub.com/mc/Guille/Seed/main
./pharo $JOB_NAME.image config $REPO ConfigurationOfHazelnut --install=stable

echo "
Workspace openContents: '\"I am a builder for a Pharo Candle system. I bootstrap the system using an object space. You configure myself by providing mi a kernelSpec, and sending me the message #buildKernel.\"

\"Load a seed from the folder of the downloaded sources\"
seed := PharoCandleSeed new
    fromDirectoryNamed: 'PharoCandle/source';
    buildSeed.

\"Create an object space that will use an AST evaluator to run some code\"
objectSpace := AtObjectSpace new.
objectSpace interpreter: (AtASTEvaluator new codeProvider: seed; yourself).

\"Create a builder, and tell it to bootstrap. Voilá, the objectSpace will be full\"
builder := PharoCandleBuilder new.
builder objectSpace: objectSpace.
builder kernelSpec: seed.
builder	buildKernel.

\"Browse me\"
objectSpace browse.'" > ./script.st

./pharo $JOB_NAME.image script.st
mkdir results
mv ¢JOB_NAME.* results
#./pharo $JOB_NAME.image test --junit-xml-output "Seed.*"