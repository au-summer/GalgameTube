# GalgameTube

Watch YouTube interactively like a visual novel, skipping subtitles as you go.

## Prerequisites

- Install [MPV Media Player](https://github.com/mpv-player/mpv)

## Usage

- Run `./galgame-tube.sh` and input a YouTube URL when it prompts. The processed contents will be stored in a subdirectory in `videos/`
- Use `Ctrl-Left` to skip to the next subtitle and `Ctrl-Right` to skip to the previous subtitle

## Optional: Vim Keybindings

Add the following two lines to your `~/.config/mpv/input.conf` to use Vim keybindings:

```
j no-osd sub-seek 1
k no-osd sub-seek -1
```

## Acknowledgements

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) by yt-dlp
