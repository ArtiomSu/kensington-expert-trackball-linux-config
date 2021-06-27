#!/usr/bin/env bash

# xinput list 
# Default layout
# "Button Middle"  	"Button Wheel Up"      "Button Horiz Wheel Left"    "Button Side"
#       2                   4                         6						  8         "Button Extra"
#                                                                                              9
# "Button Left"     "Button Wheel Down"    "Button Horiz Wheel Right"   "Button Right"
#       1					5                         7                       3


# "Button Left" "Button Middle" "Button Right" "Button Wheel Up" "Button Wheel Down" "Button Horiz Wheel Left" "Button Horiz Wheel Right" "Button Side" "Button Extra"
#       1              2             3              4                   5                  6                               7                   8             9
#

mouse_name="Kensington Expert Wireless TB Mouse"

check=$(xinput | grep "$mouse_name")

if [[ ! -z "$check" ]]; then
	mouse_id=$(xinput | grep "$mouse_name" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
	# swap right and back button then swap middle and back button
	xinput set-button-map $mouse_id 1 8 2 4 5 6 7 3 9
	# enable better scrolling 
	xinput set-prop $mouse_id "libinput Natural Scrolling Enabled" 1
	# disable acceliration for the ball
	xinput set-prop $mouse_id "libinput Accel Profile Enabled" 0, 1

	# allow scrolling by holding middle mouse button and using the ball to scroll ( really smooth and fast ). 
	xinput set-prop $mouse_id "libinput Scroll Method Enabled" 0, 0, 1
	# allow the remmaped middle mouse to be used for middle mouse scroll
	xinput set-prop $mouse_id "libinput Button Scrolling Button" 3
fi

# read more here https://askubuntu.com/questions/492744/how-do-i-automatically-remap-buttons-on-my-mouse-at-startup

# Default properties, so if you change yours around alot you can refer here for default config.
# xinput list-props
# Device 'Kensington Expert Wireless TB Mouse':
#	Device Enabled (153):	1
#	Coordinate Transformation Matrix (155):	1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
#	libinput Natural Scrolling Enabled (289):	0
#	libinput Natural Scrolling Enabled Default (290):	0
#	libinput Scroll Methods Available (291):	0, 0, 1
#	libinput Scroll Method Enabled (292):	0, 0, 0
#	libinput Scroll Method Enabled Default (293):	0, 0, 0
#	libinput Button Scrolling Button (294):	2
#	libinput Button Scrolling Button Default (295):	2
#	libinput Button Scrolling Button Lock Enabled (296):	0
#	libinput Button Scrolling Button Lock Enabled Default (297):	0
#	libinput Middle Emulation Enabled (298):	0
#	libinput Middle Emulation Enabled Default (299):	0
#	libinput Accel Speed (300):	0.000000
#	libinput Accel Speed Default (301):	0.000000
#	libinput Accel Profiles Available (302):	1, 1
#	libinput Accel Profile Enabled (303):	1, 0
#	libinput Accel Profile Enabled Default (304):	1, 0
#	libinput Left Handed Enabled (305):	0
#	libinput Left Handed Enabled Default (306):	0
#	libinput Send Events Modes Available (274):	1, 0
#	libinput Send Events Mode Enabled (275):	0, 0
#	libinput Send Events Mode Enabled Default (276):	0, 0
#	Device Node (277):	"/dev/input/event9"
#	Device Product ID (278):	1149, 32792
#	libinput Drag Lock Buttons (307):	<no items>
#	libinput Horizontal Scroll Enabled (308):	1
