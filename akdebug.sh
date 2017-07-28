#!/bin/bash
echo "AliceKit Debugger"
echo "(C) 2017 | Artemis Project Team"
echo "Version 0.1.0"
echo "---"
echo "Building application..."
swift build
echo "Done. Running built application..."
./.build/debug/lorem
echo "Done."
