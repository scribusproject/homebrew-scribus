homebrew-scribus
================
A Homebrew (the Mac OSX Package Manager) tap for installing Scribus.
This is only for the latest version of 1.5.0svn trunk. There is no 1.4.x unless someone wants to make it. 


Requirements
============
* An Intel CPU
* OSX 10.8+
* Command Line Tools for Xcode: `xcode-select --install`,
  https://developer.apple.com/downloads or
  [Xcode](https://itunes.apple.com/us/app/xcode/id497799835) <sup>[1](#1)</sup>
* A Bourne-compatible shell for installation (e.g. bash or zsh)

Usage
=====
Coming Soon for now see http://wiki.scribus.net/canvas/Scribus_and_Homebrew

**Install Xcode**


**Install Homebrew Package Manager**   
1. Open Terminal.app or [iTerm](http://iterm2.com)  
2. ``ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"``  
3. ``brew tap scribusproject/scribus`` (tap official scribusproject/homebrew-scribus repo AND from now on check the repo formula for updates everytime brew update is invoked  
4. ``brew install --HEAD scribus --verbose``  


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
