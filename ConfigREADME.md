# Quickly Configure Your Raspberry Pi

## Step 1

Choose a copy of the Rasbian OS from the `raspbian_versions` folder, or download a new version to that folder.

Open Etcher.app and flash the OS to your SD card.

## Step 2

Once the image is flashed to the SD card ...

If it has automatically been ejected by Etcher or belenaEtcher, remove the card, and re-insert it. Otherwise, just move to the next step.

If you'd like to setup a headless raspberry pi (one that will only operate w/o a monitor), then execute the script `~/pi/_pi_config/setup.headless.sh`.

If you'd prefer a full version of Rasbian OS and you'd like to utilize a monitor, then execute the script `~/pi/_pi_config/setup-boot.sh`.

## Step 3

Once you have run one of the setup scripts, eject the SD card, and insert it into the Raspberry Pi.

Plug in the Pi, and wait for it to appear on your WiFi router's configuration page. Note its IP address (particularly the 4th octet - which I label `XYZ`), then open a terminal, and SSH into your new pi with the following command:
`ssh pi@10.4.1.XYZ`
Password is `raspberry`.

## Step 4

Once you've SSH'd in for the first time, you should definitely run the command `passwd` to change the default password for the `pi` account to something more secure.

## Step 5

Update the libraries, and install `git`, and the `pip` package manager.

``` bash
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install -y python-pip git
```

## Step 6

Once those packages are installed, clone this repository `https://github.com/adgedenkers/pi-tools.git`.

``` bash
    cd /
    sudo mkdir pi-tools
    cd pi-tools
    git clone https://github.com/adgedenkers/rpi_setup_and_tools.git


```
