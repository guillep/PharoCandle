Build Scripts
=============

These are build scripts for ease of configuration and installation.

The _build.sh_ script downloads a pharo environment, installs the PharoCandle bootstrap code correspondent to this git version, and installs an exemplar script to bootstrap.

The _runtests.sh_ script downloads a pharo environment, installs the latest PharoCandle bootstrap code, and run the tests on it writing the result in _junit like xml_ files for opening with the Jenkins plugin.