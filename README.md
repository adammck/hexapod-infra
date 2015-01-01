# Hexapod Infrastructure

This repo contains the scripts and configurations to provision the operating
system of my [hexapod](http://github.com/adammck/hexapod). I don't imagine that
it'll be useful for anyone other than me, but here it is anyway.

Although it's a hardware project, I'm using roughly the same workflow that I do
when building virtual machines: starting with a widely-available base image, it
should be possible to get the system ready to serve production traffic (or in
this case, to starting stumbling around my living room beeping and crashing into
things) by running a single non-interactive command.

Once the OS is provisioned, deploying new builds is handled by the other repo.
That just involves pushing a new binary and bouncing the `bot` service.


## Usage

1. Install [Pidora](http://pidora.ca) 20 on the Raspberry Pi. This isn't
   currently automated.

2. Plug in an Ethernet cable, and boot it up.

3. Set up zeroconf hostname and SSH keys:

        HEXAPOD_HOST="hexapod.local" \
        bin/preflight 192.168.1.2

    You'll need to find the RPi's IP address for that, which can be a pain in
    the ass. You only need to do this once.

4. Create (and modify) `vars.yml` with secrets:

        cp vars.yml.example vars.yml

    This file isn't encrypted, but it's excluded from version control. It
    doesn't contain anything particularly sensitive, just the wifi password.

5. (Re-)provision with Ansible:

        HEXAPOD_HOST="hexapod.local" \
        bin/provision


## License

MIT.
