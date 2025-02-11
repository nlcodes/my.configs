#!/bin/bash

# Source .bashrc to make the playaudio function available
source /home/user/bash_scripts/play_audio_function.sh

# Play audio files using the playaudio function
playaudio -v 15 warm_pink_noise
playaudio -v 10 alpha

picom --config ~/.config/picom/picom.conf &

# Start st terminal and dwm
st &
exec dwm
