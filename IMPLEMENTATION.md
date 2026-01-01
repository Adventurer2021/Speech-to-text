# IMPLEMENTATION.md

## PocketSphinx Instructions
PocketSphinx is a lightweight speech recognition engine that supports various language models. Follow these steps to install and set up PocketSphinx:

1. **Install Dependencies**: 
   ```bash
   sudo apt-get install libpulse-dev python3-pip build-essential swig
   ```
2. **Install PocketSphinx**: 
   ```bash
   pip install pocketsphinx
   ```

3. **Setting up the Acoustic Model**:
   - Download language model and dictionary suitable for your needs.
   - These can be specified during runtime in your code or scripts.
   - **Detailed Steps**:
     - **Download Pre-trained Models**:
       Visit [CMUSphinx Downloads](https://sourceforge.net/projects/cmusphinx/files/Acoustic%20and%20Language%20Models/) to download.
     - **Install the Models**:
       Extract the downloaded files to a directory, such as `/usr/local/share/pocketsphinx/model`.
       Example:
       ```bash
       mkdir -p ~/pocketsphinx/models
       cp -r <downloaded-files> ~/pocketsphinx/models/
       ```
     - **Verify the Models**:
       ```bash
       pocketsphinx_continuous -hmm ~/pocketsphinx/models/en-us -lm ~/pocketsphinx/models/en-us.lm.bin -dict ~/pocketsphinx/models/cmudict-en-us.dict -inmic yes
       ```
       Speak into your microphone to test the recognition.
     - **Custom Models** (Optional):
       Use CMU tools to create custom `.lm` and `.dict`. Refer to [CMU LM Toolkit](https://cmusphinx.github.io/wiki/tutoriallm/).

## xdotool Setup
`xdotool` is a command-line tool used to simulate keyboard input and mouse activity. This can be useful to process speech commands to control your machine.

1. Install `xdotool`:
   ```bash
   sudo apt-get install xdotool
   ```
2. Verify installation:
   Run `xdotool -v` to confirm it is installed successfully.

## speech-to-text.sh Script
The `speech-to-text.sh` script is designed to utilize PocketSphinx for real-time transcription and interact with `xdotool` for command execution based on the recognized text.

1. **Prerequisites**: Ensure both PocketSphinx and xdotool are installed.

2. **Usage**:
   - Open the script and confirm the paths to language models, acoustic models, and dictionary files.
   - Run the script using:
     ```bash
     ./speech-to-text.sh
     ```
   - The script will listen for speech input, transcribe it using PocketSphinx, and trigger `xdotool` commands for recognized actions.

---

This integration focuses on using only open-source tools (PocketSphinx and xdotool) for real-time, command-driven speech-to-text solutions.