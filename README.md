homebrew-scribus
================
Install Scribus trunk (aka a bleeding edge version) via Homebrew, a MacOSX package manager.
The formula used to download the Scribus trunk is in what is called a Homebrew 'tap'. 'Tap' is homebrew-speak for a git repository containing extra formulae. The Scribus tap is hosted on the [official Scribus github repo](https://github.com/scribusproject/homebrew-scribus). Note: This tap installs the latest version of 1.5.x trunk (note: there is no 1.4.x unless someone wants to make it.) Use this at your own risk. Scribus team is not responsible for any loss of data or breakage of equipment. 

Requirements
============
* An Intel CPU
* OSX 10.8+
* Xcode
* A Bourne-compatible shell for installation (e.g. bash or zsh)

Usage
=====

**Install Xcode<sup>[1](#1)</sup>**  
Several options:  
1. Command Line Tools for Xcode: `xcode-select --install`,  
2. Download Xcode in it's +2GB glory directly from https://developer.apple.com/downloads  
3. Download [Xcode using iTunes](https://itunes.apple.com/us/app/xcode/id497799835) 

**Install Homebrew Package Manager**   
1. Open Terminal.app or [iTerm](http://iterm2.com)  
2. ``ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`` 

**Install Scribus and it's dependencies**  
1. ``brew tap scribusproject/scribus`` Copy the Scribus formula from the github repo AND from now on check the repo formula for updates everytime brew update is invoked  
2. ``brew install --HEAD scribus --verbose`` (Builds scribus.. This will take some time)  
3. ``brew linkapps scribus --local`` will symlink Scribus.app to ~/Applications  

**Run Scribus**  
Several options:  
* You can run from Finder: ``~/Applications/Scribus.app``  
* You can run from command line:  ``~/Applications/Scribus.app/Contents/MacOS/Scribus``  

Important Note (from the Scribus core devs)
====
*  Don't use 1.5 for production, don't rely on it to work day to day. Use stable version (1.4.5) for that.
*  If you ignore the above, be prepared to stay on a version that works for you. There's normally no
     reason to change every day.
*  No bugs for homebrew solutions in the Scribus tracker. Use the [Issue Tracker](https://github.com/scribusproject/homebrew-scribus/issues) for that.
*  Trunk is not backward compatible, in other words, back up any older Scribus formats before you open them using trunk. 
*  Trunk will be subject to be broken by the devs as it goes through the development process. 
*  Use this at your own risk. 
*  More info http://wiki.scribus.net/canvas/Scribus_and_Homebrew

Help Report Bugs
================
Since you are running Scribus trunk you can help Scribus development by making bug reports informative by generating backtraces of the bugs you encounter.  
1. Invoke the debugger: ``lldb ~/Applications/Scribus.app/Contents/MacOS/Scribus`` The CLI will respond with:
     ``(lldb) target create "/Users/snafu/Applications/Scribus.app/Contents/MacOS/Scribus"``  
     ``Current executable set to '/Users/sphenoid/Applications/Scribus.app/Contents/MacOS/Scribus' (x86_64).``  
2. When lldb prompts you: ``run`` Scribus now invoked in the debugger. The CLI responds:  
     ``Process ##### launched: '/Users/sphenoid/Applications/Scribus.app/Contents/MacOS/Scribus' (x86_64)``  
3. When you encounter a bug and need to generate a backtrace: ``bt``  
4. Copy/Paste backtrace in to a bug report at bugs.scribus.net  

Todo
====
* https://github.com/scribusproject/homebrew-scribus/issues

Footnotes
====
<a name="1"><sup>1</sup></a> Most formulae require a compiler. A handful require a full Xcode
    installation. You can install Xcode, the CLT, or both; Homebrew
    supports all three configurations. Downloading Xcode may require an Apple Developer account on older versions of OS X. Sign up for free [here](https://developer.apple.com/register/index.action).
