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

To create a PharoCandle image from source code, we bootstrap it following the process described in [here](http://playingwithobjects.wordpress.com/2013/05/06/bootstrap-revival-the-basics/). To run the bootstrap you need to open the PharoCandleBootstrap.image with the VM supporting ui. That can be done in the command line with the following script:

```bash
cd results
pharo-ui PharoCandleBootstrap.image
```

The Pharo image will contain the Pharo 2.0 welcome workspace, and a workspace with the code to run the PharoCandleBootstrap.

Load the sourcecode into the image:
```smalltalk
seed := PharoCandleSeed new
    fromDirectoryNamed: '../source';
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

PharoCandle is a minimal Pharo distribution containing only 49 classes. Those 49 classes define a whole Pharo kernel including classes such as PCString, PCObject, PCClass or PCSmallInteger. Additionally, it contains a minimal Collection library. PharoCandle classes are prefixed with 'PC' only for documentation purposes, but the prefix is not necessary for the bootstrap.

When run, a PharoCandle image runs the method **PCSystem>>start**. This method satisfies the role of a main method of other languages. The current distribution's _start_ method is as:

```smalltalk
PCSystem >> start
	self log: 'Welcome to Pharo Candle edition!'.
	self log: self tinyBenchmarks.
	self log: PCForm new primScreenSize printString.
	self beep.
	PCObject superclass ifNil: [ self quit ]
```

Currently, to run a PharoCandle distribution, a special VM is needed that allows the context switch between different images inside the same VM process. The ability for serializing an image into a file will be re-added soon.

TODOs
----------------------
- Autogenerate this script :)
- In the latest version, we lost the possibility to serialize the image. Recover it!