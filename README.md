# GMSRewind
Experimental Debug Rewind System for GameMaker Studio 2

**Check releases for YYMP files**

# How does it work?
It simply saves all variables (modifiable) of all instances (modifiable) each step, which is used for rewinding their states.

You can use F2 to rewind, F4 to go forward and F3 to continue. Keys modifiable as well.

To modify anything, go into **oGMSRewind**'s Create event.

# Known Issues
• Doesn't work on nested arrays and data structures

• Instances being created and destroyed are not recorded and may break
