#!/usr/bin/env bash

# ln -sf "C:\\Projects\\Repositories\\GitHub\\dotfiles\\.bashrc" "C:\\Users\\bakong\\.bashrc"

cmd /c "mklink /d \"C:\\Users\\bakong\\.bashrc\" \"C:\\Projects\\Repositories\\GitHub\\dotfiles\\.bashrc\""
