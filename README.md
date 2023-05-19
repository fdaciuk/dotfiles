# Dotfiles

> My configuration files for zsh, neovim and tmux.

## Font

~~I'm using [Cascadia Mono PL Regular](https://github.com/microsoft/cascadia-code)~~
I'm using [JetBrainsMono Nerd Font](https://www.programmingfonts.org/#jetbrainsmono)

_You can find this and more fonts on [NerdFonts](https://www.nerdfonts.com/)_

## Neovim

I'm using [Better Vim](https://bettervim.com) ❤️

## Tmux theme

I'm using [oh-my-tmux](https://github.com/gpakosz/.tmux)

## Gnome Terminal

To install Gnome Terminal configurations, use [this instructions](https://gist.github.com/fdaciuk/9ec4d8afc32063a6f74a21f8308e3807)

## ZSH

If you want to set some global environment variable, create a file `~/.zshenv`, and add your env vars like this:

```
export TEST=yaaaay!
```

## Instalation

- Clone this repository somewhere on your PC
- Run `./symlinks.sh`

## Moonlander Configuration

- [Wally - install keyboard firmware](https://github.com/zsa/wally/wiki/Linux-install)
- [Oryx - Live training](https://github.com/zsa/wally/wiki/Live-training-on-Linux)

After create symbolic links, install the required dependencies: 

Then, make sure your user is part of the `plugdev` group:

```
sudo groupadd plugdev
sudo usermod -aG plugdev $USER
```

## License

[MIT](https://github.com/fdaciuk/licenses/blob/master/MIT-LICENSE.md) @ Fernando Daciuk
