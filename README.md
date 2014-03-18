AwesomeRC
=========

This repository contains many valueable shortcuts and autonomous scripts for various applications listed below.

RC
---
The RC files for commonly used linux applications include:

1. Bash
2. Vim

Other applications include:

1. [Splunk](http://splunk.com)
2. [Terminator](http://gnometerminator.blogspot.com/p/introduction.html)

These files include hot key shortcuts, color schemes, functions for various purposes.

Scripts
-------

In addition to the configuration files we have accumulated some scripts to make life simpler.

Templates
---------
In the templates/ folder you will find templates that make creating new programming projects a lot easier.  These templates will contain premade Makefiles and various general configuration to save time.  Everything will be copied so you are free to edit the config files however you like.

Projects are created by running the `create-project.sh` script which is located in the scripts/ folder.
```sh
create-project.sh $PROJECT_NAME $NEW_PROJECT_PATH
```

Installation
------------

1. Clone into any prefered directory
2. Update all submodules: `git submodule update --init --recursive`
3. Pull all submodules: `git submodule foreach git pull`
4. Recommended: Make a symlink `ln -s` to RC directories into your home folder `~/`
