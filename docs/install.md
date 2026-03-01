# Install

## Install on GNU/Linux

### Debian/Ubuntu

```bash
sudo apt install --no-install-recommends emacs
```

### Arch Linux

```bash
sudo pacman -S emacs
```

---

## No Window System

```bash
alias emacs='emacs -nw'
alias emacs='emacsclient -t -a ""'
```

---

## Emacs Daemon and Emacs Client

```bash
emacs --daemon
emacs --daemon=mydaemon
```

### Connect to Emacs Daemon

terminal:

```bash
emacsclient -t -a ""
emacsclient -t -a "" -s mydaemon
```

GUI:

```bash
emacsclient -c -a ""
emacsclient -c -a "" -s mydaemon
```

### Close Emacs Daemon

```bash
emacsclient -e "(kill-emacs)"
emacsclient -e "(kill-emacs)" -s mydaemon
```

check:

```bash
pgrep -a emacs
```

