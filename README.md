# GalgameTube

Watch YouTube interactively like a visual novel, skipping subtitles as you go.

## Prerequisites

- Install [MPV Media Player](https://github.com/mpv-player/mpv)
- Copy `sub-skip.lua` to `~/.config/mpv/scripts/` on GNU/Linux or macOS, and `C:/Users/Username/AppData/Roaming/mpv/scripts/` on Windows

## Usage

- Run `./galgame-tube.sh` and input a YouTube URL when it prompts. The processed contents will be stored in a subdirectory in `videos/`
- Use `j` to skip to the next subtitle and `k` to skip to the previous subtitle

## Acknowledgements

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) by yt-dlp
- [this mpv subtitle manipulating script](https://github.com/kelciour/mpv-scripts/blob/master/sub-replay.lua) by kelciour
