homebrew-scribus
================
A Homebrew (the Mac OSX Package Manager) tap for installing Scribus.
This is only for the latest version of 1.5.0svn trunk. There is no 1.4.x unless someone wants to make it. 

Note (from the Scribus core devs)
====
*  Don't use 1.5 for production, don't rely on it to work day to day. Use stable version (1.4.4) for that.
*  If you ignore the above, be prepared to stay on a version that works for you. There's normally no
     reason to change every day.
*  No bugs for homebrew solutions in the Scribus tracker.
*  More info http://wiki.scribus.net/canvas/Scribus_and_Homebrew

Changelog
=========
*  <s>Move formula from private gist to official ScribusProject GitHub repo and updated wiki</s>
*  <s>Also possible to use https://github.com/Homebrew/homebrew-headonly</s> **created a tap**

TODO
====
Ordered from high to low priority:
*  Fix the --without flag functionality
*  Add a patch template to test Scribus patches (https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook#patches)
*  Help add libcdr to homebrew repo
*  Add Messaging (https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook#messaging)
*  Add the possibility to download only certain languages via CLI flag
*  Once Scribus v1.6 comes out, update formula and submit scribus.rb to official homebrew repo 
*  Make sure that the SVN flags get appended when specified
    For example: if we don't want to compile with graphicmagic we'd pass
    ```brew reinstall --verbose --without-graphicsmagic --HEAD scribus```
    which should pass the SVN Flag to disable graphicsmagic
*  Mac OS X v10.8 (Mountain Lion) option to compile with Python v3 (in order to use Scripter2(?) 
*  FIX: Add the option to compile Cmake with "-DWANT_SCRIPTER2=1" 


