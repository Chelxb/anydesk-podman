# anydesk-podman

A Containerfile to run AnyDesk on any recent Linux distribution.

## Motivation and disclaimer

I sometimes use AnyDesk to provide assistance but the Linux package of AnyDesk is completely outdated and the flatpak never worked for me.
The image is based on Ubuntu 20.04 and it will be EOF in June 2025. Don't expect this image to be secure !

> WARNING: If you have any alternative to AnyDesk this, you should use it!

> I am not affiliated with AnyDesk Software Gmbh in any way.

## Requirements

- Podman 3.4+
- X11
- Bash

## Usage

### Build

To build the image : `podman build -t anydesk .`

### Run

The `run.sh` script provided automate the authorization of the `anydesk` user to you X11 session then automatically revoke it after the container exited.

To run AnyDesk `run.sh`.


## License

MIT License. See the [LICENSE](LICENSE) file for details.
