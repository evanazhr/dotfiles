# Scrcpy Audio Streamer (Mic to Linux Audio Sink)

A lightweight Bash script to stream microphone audio from an Android device to a Linux system (using PulseAudio or PipeWire) in real-time via `scrcpy` and a named pipe (FIFO). This script is specifically configured without video rendering or GUI windows (`--no-video --no-window`), making it ideal for turning your phone into a clean, low-latency wireless/wired external microphone.

---

## 📋 Key Features
- **Audio-Only Streaming**: Captures audio directly from the phone's microphone (`--audio-source=mic`) without the overhead of video rendering.
- **PipeWire / PulseAudio Integration**: Uses `module-pipe-source` to create a virtual audio device/source in your Linux system.
- **Low Latency & Buffer Control**: Supports custom-tunable latency and audio buffer parameters.
- **Automatic Cleanup**: Automatically terminates background processes (`parec`), unloads the audio module, and cleans up the FIFO pipe when the script is stopped (`Ctrl+C`).

---

## 🛠️ Requirements
Make sure the following dependencies are installed on your Linux system before running the script:
1. **Scrcpy** (v2.0 or higher, which supports audio streaming)
2. **PulseAudio** or **PipeWire** (with `pulseaudio-utils` for `pactl` and `parec` commands)
3. Standard POSIX utilities (`rm`, `mkfifo`, `kill`)

---

## 🚀 Usage Guide

1. **Create the Script File**: Save the script content below into a file, for example, `stream_mic.sh`.
2. **Grant Execution Permissions**:
   ```bash
   chmod +x stream_mic.sh
   ```
3. **Run the script**:
   ```bash
   ./stream_mic.sh
   ```