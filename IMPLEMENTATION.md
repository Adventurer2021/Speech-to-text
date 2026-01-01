# PocketSphinx Installation and Configuration Guide

This guide provides step-by-step instructions to set up PocketSphinx for speech-to-text processing, including installing required dependencies, configuring the acoustic model, and setting up system hotkeys through xdotool to activate the `live.Listen` function.

## Prerequisites
- A Linux environment (Debian-based distributions recommended).
- Python 3 installed.

## Step 1: Install PocketSphinx and Its Dependencies
Execute the following commands to install PocketSphinx and its Python bindings:

```bash
sudo apt update
sudo apt install -y pocketsphinx python3-pip build-essential swig
pip3 install pocketsphinx
```

## Step 2: Set Up the Acoustic Model
The acoustic model provides the necessary files for PocketSphinx to perform speech recognition. Follow these steps:

1. Download the pre-trained English acoustic model from CMU's official website:
   ```bash
   wget https://github.com/cmusphinx/pocketsphinx/releases/download/v5.0/en-us-pocketsphinx-v5.0.tar.gz
   ```

2. Extract the tarball and move it to the desired directory:
   ```bash
   tar -xzf en-us-pocketsphinx-v5.0.tar.gz
   mv en-us /usr/local/share/pocketsphinx/model/en-us
   ```

3. Confirm the model is installed:
   ```bash
   ls /usr/local/share/pocketsphinx/model/en-us
   ```

## Step 3: Install xdotool
`xdotool` is a utility that simulates keyboard inputs for hotkey functionality. Install it using the following command:

```bash
sudo apt install -y xdotool
```

## Step 4: Configure Hotkeys to Activate `live.Listen`
You can use `xdotool` and a custom bash script to simulate activation of the `live.Listen` function programmatically. Follow these steps to configure it:

### Create a Bash Script
1. Create a script named `activate_listen.sh`:
   ```bash
   nano activate_listen.sh
   ```

2. Paste the following content into the script:
   ```bash
   #!/bin/bash
   # This script activates the live.Listen function via xdotool
   xdotool key ctrl+alt+l
   ```

3. Save the file and make it executable:
   ```bash
   chmod +x activate_listen.sh
   ```

### Set Up the Hotkey Configuration
1. Open your desktop environment's keyboard shortcut settings.
2. Add a custom shortcut:
   - Command: `/path/to/activate_listen.sh`
   - Hotkey: `Ctrl + Alt + L`

3. Apply the changes.

### Example Verification
Test the setup by pressing `Ctrl + Alt + L`. If configured properly, the script will simulate activation of the `live.Listen` function using the `xdotool` key sequence.

---

With these steps complete, your PocketSphinx setup is ready for speech-to-text tasks.