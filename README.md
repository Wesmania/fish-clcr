### fish-clcr
Tiny plugin for moving up/down through directories using ctrl-left/ctrl-right. Never type `cd ..` again.

### Installation

`omf install <url of this repo>`

### Configuration

Bind whatever sequence is ctrl-left/ctrl-right for you to functions (in ~/.config/fish/functions/fish\_user\_key\_bindings.fish):

```
	bind <C-left> "_up_dirstack ; commandline -f repaint"
	bind <C-right> "_down_dirstack ; commandline -f repaint"
```

### Usage

`C-<left>` to go up, `C-<right>` to go back down. Directories are remembered as long as you don't manually cd.
