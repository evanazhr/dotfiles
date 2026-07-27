#!/usr/bin/sh

LATENCY=125

# 1. Ensure the FIFO pipe is clean or create it if it doesn't exist
if [ ! -p /tmp/scrcpy_pipe ]; then
    rm -f /tmp/scrcpy_pipe
    mkfifo /tmp/scrcpy_pipe
fi

# 2. Load the PipeWire/PulseAudio module
MODULE_ID=$(pactl load-module module-pipe-source source_name="Scrcpy" channels=2 format=16 rate=48000 file=/tmp/scrcpy_pipe)

# 3. Run parec to read the pipe in the background
parec --device="Scrcpy" --raw > /dev/null &
PAREC_PID=$!

# 4. Run scrcpy
./scrcpy --no-video --no-window --no-playback --audio-source=mic --audio-codec=raw --record-format=wav --record=/tmp/scrcpy_pipe --audio-buffer=$LATENCY --audio-output-buffer=10

# 5. Cleanup when scrcpy is closed (Ctrl+C)
kill $PAREC_PID
pactl unload-module $MODULE_ID
rm -f /tmp/scrcpy_pipe