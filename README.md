# docker-rpi-asm-framebuffer
## Install Dependencies
### Arch Linux
```
sudo pacman -Sy docker
```
## Installation
```bash
curl https://raw.githubusercontent.com/Lautron/docker-rpi-asm-framebuffer/master/install.sh | bash
```
## Configuration
Modify `~/.config/runframeb/start_script.sh`

This script executes everytime the docker container starts

### Default config
```
make 	      // Compile code
make runQEMU  // Run qemu vm
bash 	      // Open bash shell
```

## Usage
```
runframeb DIR
```
Where DIR has the following shape:
```
DIR/
├── app.s
├── Makefile
├── memmap
└── ...
```
## Makefile recommendations
- Add `< /dev/null &` to the end of your runQEMU command to allow it to run in the background
- Check the Makefile uploaded to this repo to see an example makefile
