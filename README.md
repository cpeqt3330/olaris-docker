## Olaris Docker images

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

### Build

`docker build . --tag olaris-server`

### Run

`docker run -d --publish 8080:8080 -v ~/media/:/var/media -v ~/.config/olaris:/root/.config/olaris -v ~/.config/rclone:/root/.config/rclone olaris-server`

Updates with latest release from master on reboot.
