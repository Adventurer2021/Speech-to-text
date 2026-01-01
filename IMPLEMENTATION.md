# IMPLEMENTATION.md

### PocketSphinx Installation Instructions

Follow these steps to install and verify PocketSphinx on your system:

1. **Enable the EPEL Repository**

   For systems using `yum` (e.g., CentOS, RHEL):
   ```bash
   sudo yum install -y epel-release
   ```

   For systems using `dnf` (e.g., Fedora):
   ```bash
   sudo dnf install -y epel-release
   ```

2. **Install PocketSphinx**

   Install PocketSphinx and its dependencies:
   ```bash
   sudo yum install -y pocketsphinx sphinxbase python3-pocketsphinx
   ```

   Or, for `dnf`:
   ```bash
   sudo dnf install -y pocketsphinx sphinxbase python3-pocketsphinx
   ```

3. **Verify the Installation**

   Check if PocketSphinx was installed correctly by running:
   ```bash
   pocketsphinx_continuous -inmic yes
   ```
   If you see PocketSphinx initializing and starting, the installation was successful.

4. **Test Real-time Microphone Input**

   Run the following command to test real-time speech-to-text using your microphone:
   ```bash
   pocketsphinx_continuous -inmic yes
   ```
   Speak into your microphone and observe the speech-to-text conversion output in the terminal.

5. **Troubleshooting Audio Issues**

   - Ensure your microphone is connected and working.
   - Check if the microphone is recognized by the system using:
     ```bash
     arecord -l
     ```
   - If you are facing permission issues, you can run the command as `root` or configure your user for audio device access.
   - Adjust the input device if necessary by specifying it with `-inmicdev`.
     ```bash
     pocketsphinx_continuous -inmic yes -inmicdev <device_number>
     ```
   Replace `<device_number>` with the appropriate device ID obtained from `arecord -l`.

If you encounter further issues, please consult the [PocketSphinx Documentation](https://github.com/cmusphinx/pocketsphinx) or seek support from the community.
