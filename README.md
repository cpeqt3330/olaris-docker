## Olaris Docker images


### Build

`docker build . --tag olaris-server`

### Run

`docker run -d --publish 8080:8080 -v ~/media/:/var/media -v ~/.config/olaris:/root/.config/olaris olaris-server`

Updates with latest release from master on reboot.
