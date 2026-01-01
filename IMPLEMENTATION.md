# IMPLEMENTATION.md

This setup is specifically designed for AlmaLinux version 10 and supports using a webcam microphone USB attached to the system.

## Components Required for Listening Mode

To activate the listening mode, the following components and configurations are necessary:

### Hardware Requirements:
1. A computing environment with AlmaLinux 10 installed.
2. A functional webcam with microphone (USB-compatible).
3. A keyboard to trigger the listening mode.

### Software Configuration:
1. Ensure that the necessary drivers for the USB webcam microphone are installed on AlmaLinux 10.
2. Clone the repository using the following command:
   ```
git clone https://github.com/Adventurer2021/Speech-to-text.git
   ```
3. Navigate to the project directory:
   ```
cd Speech-to-text
   ```
4. Follow any other installation requirements mentioned in the `README.md` file of this repository to configure necessary dependencies.

### Triggering the Listening Mode
To activate the listening mode, perform the following steps:

1. **Identify the Hotkey Combination:**
   The default hotkey combination configured for this setup is `Ctrl + Shift + L`.

2. **Execute the Application:**
   Run the application using:
   ```
python3 speech_to_text.py
   ```

3. **Activate Listening:**
   Once the application starts, press `Ctrl + Shift + L` simultaneously to activate the listening mode.
4. **Verify Activation:**
   Check the logs or ensure visual/audio indicators confirm that the application has entered the active listening mode.

**Note:** Make sure the webcam microphone is plugged in and functioning correctly prior to starting the application.