### Mozilla DeepSpeech Installation Instructions

1. **Install Prerequisites**:
   ```bash
   sudo dnf install git python3 python3-pip
   pip install deepspeech
   ```

2. **Download Pre-Trained Models**:
   ```bash
   wget https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.pbmm
   wget https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer
   ```

3. **Verify Installation**:
   Run `deepspeech` help to confirm installation:
   ```bash
   deepspeech --help
   ```

4. **Test Speech-to-Text Processing**:
   ```bash
   deepspeech --model deepspeech-0.9.3-models.pbmm \
              --scorer deepspeech-0.9.3-models.scorer \
              --audio my-audio-file.wav
   ```
   Replace `my-audio-file.wav` with your audio file.

5. **Set Up Microphone Input**:
   Install `pyaudio`:
   ```bash
   pip install pyaudio
   ```

---

### OpenAI Whisper Installation Instructions

1. **Install Whisper Package**:
   ```bash
   pip install openai-whisper
   ```

2. **Test Speech-to-Text**:
   Use its Python interface or CLI:
   ```bash
   whisper audio-file.wav --model tiny.en
   ```

3. **Set Up Real-Time Transcription**:
   Install additional Python libraries like `pyaudio` and script microphone processing via Whisper.