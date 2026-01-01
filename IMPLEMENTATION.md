# Setting Up PocketSphinx with Keyboard Hotkey Integration

This guide contains detailed instructions for implementing `PocketSphinx`, a lightweight speech recognition engine, along with keyboard hotkey functionality to toggle the recognition mode.

## Prerequisites
Ensure the following are installed on your system:
- Python 3.8 or higher
- Internet connection for package downloads
- System dependencies for building PocketSphinx

## Step 1: Install System Dependencies

Install the necessary system packages for PocketSphinx and Python:
```bash
sudo apt-get update
sudo apt-get install -y python3 python3-pip swig libpulse-dev build-essential
```

## Step 2: Install PocketSphinx

Install the PocketSphinx library via pip:
```bash
pip install pocketsphinx
```

## Step 3: Set Up the Speech-to-Text Script

Create a new file called `main.py` in your project directory with the following content:

```python
import os
from pocketsphinx import LiveSpeech
from pynput import keyboard

# Initialize Speech Recognition
speech = LiveSpeech(lm=False, keyphrase='start listening', kws_threshold=1e-20)

# Function to toggle listening mode
listening = False

def toggle_listen():
    global listening
    listening = not listening
    if listening:
        print("Listening for speech...")
    else:
        print("Stopped listening.")

# Keyboard hotkey functionality
def on_hotkey_press(key):
    try:
        if key.char == 'l':  # Press 'l' to toggle listening
            toggle_listen()
    except AttributeError:
        pass

# Listener for the keyboard
with keyboard.Listener(on_press=on_hotkey_press) as hotkey_listener:
    print("Press 'l' to toggle the speech recognition.")
    try:
        for phrase in speech:
            if listening:
                print(f"Recognized: {phrase}")
    except KeyboardInterrupt:
        print("Exiting...")
```

## Step 4: Test the Implementation

Run the script:
```bash
python3 main.py
```

- Press `'l'` on your keyboard to toggle listening mode.
- Speak into your microphone and observe text output when in listening mode.

## Step 5: Customize as Required

- Change the `keyphrase` in `LiveSpeech` initialization to match your preferred activation phrase (e.g. `'hello'`).
- Use a different hotkey by modifying `key.char` in the `on_hotkey_press` function (e.g., `'k'`, `'h'`).
- Adjust the `kws_threshold` parameter to control the sensitivity of speech recognition.

---

This concludes the setup for PocketSphinx with hotkey integration! Feel free to experiment and modify as per your needs.