# Implementation Documentation

This document provides instructions on implementing and utilizing the Speech-to-Text repository. For simplicity, two methodologies are excluded in this branch: Mozilla DeepSpeech and OpenAI Whisper. Only PocketSphinx-based instructions are detailed below. If you need the other methodologies, please refer to the `main` branch.

## Installation

1. Clone the repository.
   ```bash
   git clone https://github.com/Adventurer2021/Speech-to-text.git
   ```
2. Checkout to the `pocketsphinx-only-instructions` branch.
   ```bash
   git checkout pocketsphinx-only-instructions
   ```
3. Install dependencies required for PocketSphinx.

   On Linux:
   ```bash
   sudo apt-get install pocketsphinx python3-pocketsphinx
   ```

   On MacOS:
   ```bash
   brew install pocketsphinx
   ```

   On Windows:
   - Download the PocketSphinx binaries from the [official website](https://github.com/cmusphinx/pocketsphinx) and follow the installation instructions.

## Implementation

1. Record or prepare an audio file for processing.
2. Use the script located at `scripts/pocketsphinx_stt.py`. This script provides text transcription of the given audio file.

## Future Enhancements
- Integrate additional language models.
- Optimize for real-time speech processing.

The documentation excludes Mozilla DeepSpeech and OpenAI Whisper-specific instructions as requested for this branch.