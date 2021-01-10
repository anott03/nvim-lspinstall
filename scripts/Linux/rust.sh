#!/bin/bash
if [[ -f ~/.local/bin/rust-analyzer ]]
then
  rm -rf ~/.local/bin/rust-analyzer
fi
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-linux -o ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer &&
echo "rust analyzer successfully installed"
