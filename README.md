# Adge's Raspberry 'Pi-Config' Tools

## Quickly Configure your Raspberry Pi and Run it

### Step 1

Choose a copy of the Rasbian OS from the `raspbian_versions` folder, or download a new version to that folder.

Download the balenaEtcher app from their site: [https://www.balena.io/etcher/](https://www.balena.io/etcher/)
Open balenaEtcher.app and flash the OS to your SD card.

### Step 2 - Flash the SD Card

Once the image is flashed to the SD card ...

If it has automatically been ejected by balenaEtcher, remove the card, and re-insert it. Otherwise, just move to the next step.

### Step 3 - Preliminary Setup Script for SD Card

Running either of these scripts will allow your Pi to boot up on first-boot, and automatically connect to your WiFi network. This will allow you to then SSH into it to make additional changes to your Pi.

If you'd like to setup a headless raspberry pi (one that will only operate w/o a monitor), then execute the script `~/bin/pi-config/setup.headless.sh`.

``` bash
    cd ~/bin/pi-config
    . setup.headless.sh
```

If you'd prefer a full version of Rasbian OS and you'd like to utilize a monitor, then execute the script `~/bin/pi-config/setup-boot.sh`.

``` bash
    cd ~/bin/pi-config
    . setup-boot.sh
```

### Step 4

Once you have run one of the setup scripts, eject the SD card, and insert it into the Raspberry Pi.

Plug in the Pi, and wait for it to appear on your WiFi router's configuration page. Note its IP address (particularly the 4th octet - which I label `XYZ`), then open a terminal, and SSH into your new pi with the following command:
`ssh pi@10.4.1.XYZ`
Password is `raspberry`.

### Step 5

Once you've SSH'd in for the first time, you should definitely run the command `passwd` to change the default password for the `pi` account to something more secure.

You should also create a new user for yourself, so you're not using the `pi` admin account.

Download this .sh file, and execute it to create a new user on your Pi.
``` bash
curl -O https://gist.githubusercontent.com/adgedenkers/5c5b5bbdcede0a5c83fb6f6f5991dcc8/raw/27497563e64ededa91352d22959b059ae39eb65f/pi-user-setup.sh
```

``` bash
. pi-user-setup.sh
```

### Step 6

Update the libraries, and install `git`, and the `pip` package manager.

``` bash
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install -y python-pip git
```

## Optional Steps

## Step 7

Once those packages are installed, clone this repository `https://github.com/adgedenkers/pi-tools.git`.

``` bash
    cd ~/bin
    git clone https://github.com/adgedenkers/pi-tools.git
```
