#!/bin/bash

#   ____       _                           _____      _
#  / ___| __ _| | __ _  __ _ _ __ ___   __|_   _|   _| |__   ___
# | |  _ / _` | |/ _` |/ _` | '_ ` _ \ / _ \| || | | | '_ \ / _ \
# | |_| | (_| | | (_| | (_| | | | | | |  __/| || |_| | |_) |  __/
#  \____|\__,_|_|\__, |\__,_|_| |_| |_|\___||_| \__,_|_.__/ \___|

# A lightweight workflow to download youtube videos and clean subtitles

# Let the user input the url
echo "Please input the url of the video you want to download: "
read -r url

# Get the name of the video
name=$(yt-dlp --get-title "$url")

# Let the user decide the format
yt-dlp -F "$url"
echo "Please input the format code of the video you want to download: "
read -r format

# Download the video
yt-dlp --write-auto-subs --write-subs --format "$format" --paths "videos/$name/" "$url"

# Rename the downloaded files
for file in videos/"$name"/*; do
    mv "$file" "videos/$name/$name.${file##*.}"
done

# Transform the subtitle file to srt format
ffmpeg -i "videos/$name/$name.vtt" "videos/$name/$name.srt"

# Clean the subtitle file
python clean_srt.py "videos/$name/$name.srt"

# remove the vtt file
rm "videos/$name/$name.vtt"
