## Setting up Keyboard Hotkeys for live.Listen Function

To configure a keyboard shortcut that activates the live.Listen function, follow these steps:

### **Steps for GNOME Desktop Environment:**
1. Open **Settings** and navigate to the **Keyboard** section.
2. Scroll down and click **Custom Shortcuts**.
3. Click **Add Custom Shortcut**, then provide the following details:
   - **Name**: live.Listen Activation
   - **Command**: `/path/to/speech-to-text.sh`
     (Replace `/path/to/` with the full path to the `speech-to-text.sh` script.)
4. Set a keyboard shortcut of your choice, such as `Ctrl+Alt+L`. Ensure it doesn't conflict with any existing shortcuts.

### **Verification:**
- Press the shortcut key to activate the script. PocketSphinx will start listening for command inputs and trigger actions using xdotool.

This step ensures quick access to the live.Listen functionality without manually executing the script each time.