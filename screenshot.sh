#!/bin/sh
# Retakes screenshot.png, the README's one picture: the Read me tab at 1280x800,
# drawn by headless Chrome from the working tree. Run it after any visible UI
# change and commit the new bytes together with the change that caused them.
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
    --headless=new --disable-gpu --hide-scrollbars \
    --window-size=1280,800 --virtual-time-budget=6000 \
    --screenshot=screenshot.png "file://$PWD/index.html" 2>/dev/null
ls -la screenshot.png
