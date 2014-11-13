ADB shell
=========

Standalone binary package for executing commands on an Android device with handy shell and shorthands for most popular commands.
Binaries are taken from Android SDK.

Usage
-----

Run `adbshell.bat` and input your commands. You may use shorthands for popular commands. Get the current list of them printed out by executing `adbshell.bat /?`.

**Tip**: you can create a Windows shortcut to `adbshell.bat` name it `adb` or `adbs` and place it somewhere in the `%PATH%`. Thus you'll always have ADB shell at hand with `WinKey + R` > `adb` > `Enter`.


Adding shorthands
-----------------

These are usual batch files containing a single line. That line is printed out when you execute `adbshell.bat /?` so if you use more lines you'll get the shorthands list output quite messed up.