# Panda-FFmpeg APT repository

Signed Debian repository for `panda-ffmpeg`.

## Install

```bash
curl -fsSL https://nikhil390u8o.github.io/panda-ffmpeg-apt/install.sh | bash
```

Or manually:

```bash
sudo install -d -m 0755 /etc/apt/keyrings
curl -fsSL https://nikhil390u8o.github.io/panda-ffmpeg-apt/panda-ffmpeg.gpg | sudo tee /etc/apt/keyrings/panda-ffmpeg.gpg >/dev/null
echo "deb [signed-by=/etc/apt/keyrings/panda-ffmpeg.gpg] https://nikhil390u8o.github.io/panda-ffmpeg-apt stable main" | sudo tee /etc/apt/sources.list.d/panda-ffmpeg.list
sudo apt-get update
sudo apt-get install -y panda-ffmpeg
```

Packages are published by the `v11-apt` workflow in `nikhil390u8o/panda-ffmpeg`.
The `Release` file is detached-signed (`Release.gpg`) and clearsigned (`InRelease`).
Store the private key as GitHub secret `PANDA_GPG_PRIVATE_KEY`.
