#!/bin/bash
cd ~/dotfiles/i3/wallpaper

already_download=false
while [[ $already_download != true ]]
do
    wget -O ~/dotfiles/i3/wallpaper/download.jpeg https://picsum.photos/1920/1800/?random
    if [ $? -eq 0 ]; then
        echo OK
        already_download=true
    else
        echo FAIL
        sleep 3m

    fi
done
mv download.jpeg wall.jpeg
