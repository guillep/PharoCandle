PharoCandle
===========

This project contains the code of PharoCandle. PharoCandle is a minimal [Pharo](http://www.pharo.org) distribution, based on [MicroSqueak](http://web.media.mit.edu/~jmaloney/microsqueak/readme.txt), work of John Maloney. This distribution is currently for research purposes, but you can take it and use it for your own purposes.

The main purpose of this project is the Bootstrap of a PharoCandle image using the sourcecode under the _source_ folder. In order to bootstrap, we need to install the bootstrap library into a Pharo environment. Look at _installation_ and _usage_ for more details.

Installation
------------

In order to download the complete environment to bootsrap PharoCandle, there is only need for execute the following bash script on the master folder.
```bash
build/build.sh
```

Once downloaded and built, a _results_ folder will be created. The results folder will contain a complete Pharo environment, with the following files:
- pharo_vm: a folder containing the Pharo Virtual Machine
- pharo and pharo_ui scripts to run the VM
- PharoCandleBootstrap.image: Pharo 2.0 image file with the pharo candle project installed
- PharoCandleBootstrap.changes: the changes log of the correspondent image with the same name
- package-cache: a folder for caching Pharo's monticello packages  

Usage
-----

To run the bootstrap you need to open the PharoCandleBootstrap.image with the VM supporting ui. That can be done in the command line with the following script:

```bash
cd results
pharo-ui PharoCandleBootstrap.image
```

The Pharo image will contain the Pharo 2.0 welcome workspace, and a workspace with the code to run the PharoCandleBootstrap.

Load the sourcecode into the image:
```smalltalk
seed := PharoCandleSeed new
    fromDirectoryNamed: ''../source'';
    buildSeed.
```

Create an object space that will use an AST evaluator to run code during the bootstrap. An objectspace is an object enclosing the bootstrapped image.
```smalltalk
objectSpace := AtObjectSpace new.
objectSpace interpreter: (AtASTEvaluator new codeProvider: seed; yourself).
```

Create a PharoCandle builder, and tell it to bootstrap. Voilá, the objectSpace will be full
```smalltalk
builder := PharoCandleBuilder new.
builder objectSpace: objectSpace.
builder kernelSpec: seed.
builder	buildKernel.
```

Browse the bootstrapped objectSpace by doing
```smalltalk
objectSpace browse.
```

PharoCandle's Overview
----------------------
