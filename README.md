# ISO Builder

This ISO builder is fork of the good work from the elementary crew.  Many thanks to the devs there https://github.com/elementary/os

## Building Locally

As Ubuntu Sway is built with the Debian version of live-build, not the Ubuntu patched version, it's easiest to build an Ubuntu Sway .iso in a Debian VM or container. This prevents messing up your host system too.

The following example uses Docker and assumes you have Docker correctly installed and set up:

Clone this project & cd into it:

```shell
git clone https://github.com/ubuntu-gnome-remix/iso-builder && cd iso-builder
```

Configure the channel in the etc/terraform.conf (unstable, stable).

Run the build:

```shell
docker compose up --build
```

When done, your image will be in the builds folder.

## Further Information

More information about the concepts behind `live-build` and the technical decisions made to arrive at this set of tools to build an .iso can be found [on the wiki](https://github.com/elementary/os/wiki/Building-iso-Images).
