homebrew-scribus
================
A Homebrew (the Mac OSX Package Manager) tap for installing Scribus.
This is only for the latest version of 1.5.x trunk. There is no 1.4.x unless someone wants to make it. 


Requirements
============
* An Intel CPU
* OSX 10.8+
* Xcode
* A Bourne-compatible shell for installation (e.g. bash or zsh)

Usage
=====

**Install Xcode**  
1. Command Line Tools for Xcode: `xcode-select --install`, https://developer.apple.com/downloads or [Xcode](https://itunes.apple.com/us/app/xcode/id497799835) <sup>[1](#1)</sup>

**Install Homebrew Package Manager**   
1. Open Terminal.app or [iTerm](http://iterm2.com)  
2. ``ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"``  
3. ``brew tap scribusproject/scribus`` (tap official scribusproject/homebrew-scribus repo AND from now on check the repo formula for updates everytime brew update is invoked  
4. ``brew install --HEAD scribus --verbose``  
5. ``brew linkapps scribus --local`` will symlink Scribus.app to ~/Applications

**Run Scribus**  
Several options:  
* You can run from Finder: ``~/Applications/Scribus.app``  
* You can run from command line:  ``~/Applications/Scribus.app/Contents/MacOS/Scribus``  

Help Report Bugs
================
Since you are running Scribus trunk you can help Scribus development by making bug reports informative by generating backtraces of the bugs you encounter.
1. Invoke the debugger: ``lldb ~/Applications/Scribus.app/Contents/MacOS/Scribus``
2. When lldb prompts you: ``run`` to run Scribus in the debugger  
3. When you encounter a bug and need to generate a backtrace: ``bt``
4. Copy/Paste backtrace in to a bug report at bugs.scribus.net 

Todo
====
* https://github.com/scribusproject/homebrew-scribus/issues


Note (from the Scribus core devs)
====
*  Don't use 1.5 for production, don't rely on it to work day to day. Use stable version (1.4.5) for that.
*  If you ignore the above, be prepared to stay on a version that works for you. There's normally no
     reason to change every day.
*  No bugs for homebrew solutions in the Scribus tracker.
*  More info http://wiki.scribus.net/canvas/Scribus_and_Homebrew


<a name="1"><sup>1</sup></a> Most formulae require a compiler. A handful require a full Xcode
    installation. You can install Xcode, the CLT, or both; Homebrew
    supports all three configurations. Downloading Xcode may require an Apple Developer account on older versions of OS X. Sign up for free [here](https://developer.apple.com/register/index.action).
