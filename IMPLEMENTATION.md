### PocketSphinx Installation Instructions (Extended)

Follow these steps to install and verify PocketSphinx on your system:

#### **1. Enable the EPEL Repository**
For systems using `dnf` (e.g., AlmaLinux):
```bash
sudo dnf install -y epel-release
sudo dnf clean all
```

#### **2. Install PocketSphinx**
Install PocketSphinx and its dependencies:
```bash
sudo dnf install -y pocketsphinx sphinxbase python3-pocketsphinx
```

#### **3. Verify the Installation**
Test if PocketSphinx was installed correctly:
```bash
pocketsphinx_continuous -inmic yes
```
If you see PocketSphinx initializing and starting, the installation was successful.

#### **4. Test Real-Time Microphone Input**
Run the following command to test real-time speech-to-text using your microphone:
```bash
pocketsphinx_continuous -inmic yes
```
Speak into your microphone and observe the speech-to-text conversion output in the terminal. To stop the program, use `Ctrl+C`.

#### **5. Troubleshooting Audio Issues**
- Ensure your microphone is connected and working.
- Check if the microphone is recognized by the system:
  ```bash
  arecord -l
  ```
- If you are facing permission issues, you can run the command as `root` or configure your user for audio device access.
- Adjust the input device if necessary by specifying it with `-adcdev`:
  ```bash
  pocketsphinx_continuous -inmic yes -adcdev <device_number>
  ```
  Replace `<device_number>` with the appropriate device ID obtained from `arecord -l`.

---

### Adding a Keyboard Shortcut in GNOME

Set up a hotkey to start PocketSphinx for real-time speech recognition:

#### **1. Write a Script**
Create a script named `speech-to-text.sh`:
```bash
nano ~/speech-to-text.sh
```
Paste the following into the script:
```bash
#!/bin/bash
pocketsphinx_continuous -inmic yes 2> /dev/null | while read -r line; do
    xdotool type "$line"
    xdotool key Return  # Press Enter after typing each line
done
```
Make the script executable:
```bash
chmod +x ~/speech-to-text.sh
```

#### **2. Install Required Dependencies**
Install `xdotool` for automating text entry:
```bash
sudo dnf install xdotool
```

#### **3. Add a Custom Shortcut**
1. Open **Settings** > **Keyboard** > **Custom Shortcuts**.
2. Click the **+** button to add a new shortcut.
3. Fill in the details:
   - **Name**: Speech-to-Text
   - **Command**: `bash ~/speech-to-text.sh`
   - **Shortcut**: Choose a key combination (e.g., `Ctrl+Alt+M`).

#### **4. Test the Shortcut**
1. Place the cursor in any text field.
2. Press your chosen shortcut (e.g., `Ctrl+Alt+M`).
3. Start speaking into your microphone, and the speech will be converted into text in real-time.

---