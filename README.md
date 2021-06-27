# kensington-expert-trackball-linux-config

This is a configuration script for the Kensington Expert trackball that remaps some of the buttons and edits some props.

This scripts dependancies are `xinput` `grep` and `sed` which should be installed on all distros by default.

There are comments in the script which should help you setup your own config.

# Layout

If you run the script as is without changing anything this will be your layout:
```
______________   _________  ________________
| back       |   |       |  | right click  |
--------------   |       |  ----------------
______________   |       |  ________________
| left click |   |       |  | middle click |
--------------   ---------  ----------------

```
1. Natural scrolling will be enabled. ( scrolling is smoother with this on )
2. Ball acceliration will be disabled.
3. Middle click + ball roll can also be used to scroll. ( very smooth and fast scrolling )

# Usage
You can run the script simpy by calling the script `./Kensington_Expert_Setup.sh` there is no need for root.

Or a better way is to put it in your desktop environment or window manager config, so that it runs when you login, the script also checks if the trackball is present before running any commands so its safe to use it like this.

I use i3 window manager so I put this in my i3 config `exec_always --no-startup-id ~/scrips/Kensington_Expert_Setup.sh`

# Todo
I want to change the scroll speed without using any other external programs but this trackball is missing a property in xinput props to be able to do so.

The kensington software on windows allows you to press two buttons at once for a different input which is pretty cool, so I'm looking for a way to achieve this on linux too. It doesn't seem possible with xinput to my knowledge. 

# Video
[![Youtube](https://img.youtube.com/vi/hIAJ9Icq3KU/0.jpg)](https://www.youtube.com/watch?v=hIAJ9Icq3KU)
