# Key Bindings

- `C`: Control
- `M`: Meta (Alt)
- `S`: Shift

## Basic

- `C-x C-c`: Exit Emacs
- `C-x C-f`: Find a file and open it
- `C-x C-s`: Save the current buffer
- `C-x s`: Save some buffers (prompt for each modified buffer)

## Navigation

### Control Navigation

```text
             C-p
              :
C-a .. C-b .. █ .. C-f .. C-e
              :
             C-n
```

- `C-p`: Move to previous line
- `C-n`: Move to next line
- `C-b`: Move backward one character
- `C-f`: Move forward one character
- `C-a`: Move to beginning of line
- `C-e`: Move to end of line

### Meta (Alt) Navigation

```text
M-a .. [word] M-b [word] M-f [word] .. M-e
```

- `M-b`: Move backward one word
- `M-f`: Move forward one word
- `M-a`: Move to beginning of sentence
- `M-e`: Move to end of sentence

### Page Navigation

- `M-<`: Move to beginning of buffer (Start of file)
- `M->`: Move to end of buffer (End of file)
- `M-v`: Scroll up one screen (previous page)
- `C-v`: Scroll down one screen (next page)
- `C-M-v`: Scroll down one screen in the other window
- `C-l`: Recenter the current line in window (cycle center/top/bottom)

## Editing

- `C-j`: Insert newline and indent
- `C-k`: Kill text to end of line
- `M-w`: Copy region (kill-ring save)
- `C-w`: Cut region (kill region)
- `C-y`: Paste (yank) from kill ring
- `M-y`: Replace yanked text with earlier kill-ring entry
- `C-<SPC>`: Set mark (start/select region)
- `C-/` or `C-x u`: Undo
- `M-x undo-redo`: Redo after undo (Emacs 28+)
- `C-x h`: Mark whole buffer (select all)

## Buffers

- `C-x C-b`: List buffers
- `C-x b`: Switch to another buffer

## Windows

- `C-x o`: Move focus to other window
- `C-x 1`: Keep only current window
- `C-x 2`: Split window below
- `C-x 3`: Split window right
- `C-x 0`: Delete current window

## Search

- `C-s`: Incremental search forward
- `C-r`: Incremental search backward
- `M-x repl s`: Replace string (`replace-string`)
- `M-x repl reg`: Replace regexp (`replace-regexp`)
- `M-x query-replace`: Query replace string (confirm each match)
  - `y` or `<SPC>`: Replace this match and move to the next one
  - `n` or `<DEL>`: Skip this match and move to the next one
  - `!`: Replace this and all remaining matches without asking
  - `q`: Quit query-replace
  - `.`: Replace this match and then quit
- `M-x query-replace-reg`: Query replace regexp (confirm each match)

## Help

- `C-h c KEY`: Show command bound to key sequence
- `C-h k KEY`: Show help for key sequence
- `C-h x`: Describe command (`M-x` command help)
- `C-h a`: Search commands by keyword (apropos-command)
- `C-h i`: Open Info manuals
