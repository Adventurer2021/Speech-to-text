# Speech-to-text

A project to enable speech-to-text on an AlmaLinux v10 system.

## Overview

This project provides scripts, configurations, and documentation to enable and use a speech-to-text solution on AlmaLinux v10. Speech recognition can be utilized for transcription, voice commands, and more.

## Features

- Converts speech input into text.
- Optimized for AlmaLinux v10 systems.
- Easy setup with configurable options.

## System Requirements

- AlmaLinux v10
- Python 3.8 or higher
- Microphone (or other audio input device)
- Internet connection (for model downloads or cloud-based recognition)

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Adventurer2021/Speech-to-text.git
   cd Speech-to-text
   ```

2. Ensure Python is installed:
   ```bash
   python3 --version
   ```

3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

To start the speech-to-text service, run the following command:
```bash
python3 main.py
```

Follow the on-screen prompts to provide audio input and see transcriptions in real-time.

## Configuration

Before running the service:

1. Configure your preferences in `config.yaml` (default settings are already provided):
   - Language preference
   - Recognition model selection (local/cloud-based)

2. Test your microphone with:
   ```bash
   arecord --list-devices
   ```

## Troubleshooting

- Ensure microphone permissions are granted.
- Check internet connection for cloud-based models.
- Review logs in `logs/` folder for more details.

## Future Enhancements

- Support for additional operating systems.
- Advanced customization for multi-language speech recognition.
- Integration with external services (e.g., Google Cloud Speech, Azure Speech-to-Text).

---

Feel free to contribute, raise issues, or suggest improvements within the repository. Let’s make speech recognition more accessible! For inquiries or contributions, reach me at Adventurer2021.