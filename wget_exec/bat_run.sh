#!/bin/bash

dir_path=$( cd $(dirname "$1"); pwd )
base_path=$(basename "$1")

#echo $dir_path
#echo $base_path

docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -e PAGER -v "$HOME/.config/bat/config:/root/.config/bat/config" -v "$dir_path:/target" executable $base_path