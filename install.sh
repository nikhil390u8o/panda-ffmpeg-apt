#!/usr/bin/env bash
set -euo pipefail
BASE="${1:-https://nikhil390u8o.github.io/panda-ffmpeg-apt}"
sudo install -d -m 0755 /etc/apt/keyrings
curl -fsSL "$BASE/panda-ffmpeg.gpg" | sudo tee /etc/apt/keyrings/panda-ffmpeg.gpg >/dev/null
echo "deb [signed-by=/etc/apt/keyrings/panda-ffmpeg.gpg] $BASE stable main" | sudo tee /etc/apt/sources.list.d/panda-ffmpeg.list >/dev/null
sudo apt-get update
sudo apt-get install -y panda-ffmpeg
panda-ffmpeg --version
