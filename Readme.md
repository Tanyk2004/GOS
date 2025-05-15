### GOS
---
Stay tuned...

## X11 Forwarding

Download XLaunch from [SourceForge](https://sourceforge.net/projects/vcxsrv/)

## Docker

1. Building Image from Docker file ```docker build -t tanay24/gos .```

2. Add your ip to the ```entrypoint.sh``` file to the ```HOST_IP``` variable

3. Running Image ```docker run -it --rm tanay24/gos```

## Workflow

For now running ```make``` creates a floppy disk image with the correct signatures for the first sector that makes our BIOS start executing instructions. Run ```qemu-system-i386 -fda build/main_floppy.img```