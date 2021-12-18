# Dotfiles

> My configuration files for zsh, neovim and tmux.

## Font

I'm using [Cascadia Mono PL Regular](https://github.com/microsoft/cascadia-code)

_You can find more fonts on [NerdFonts](https://www.nerdfonts.com/)_

## Tmux theme

I'm using [oh-my-tmux](https://github.com/gpakosz/.tmux)

## Gnome Terminal

To install Gnome Terminal configurations, use [this instructions](https://gist.github.com/fdaciuk/9ec4d8afc32063a6f74a21f8308e3807)

## Instalation

- Clone this repository somewhere on your PC
- Run `./symlinks.sh`

## About bin/fishies

It's an wallpaper to use on your terminal! :D 
You will may need some deps before using it:

```
sudo apt install libcurses-perl
sudo cpan -I Term::Animation
```

Restart your terminal session (or `. ~/.zshrc`), give `bin/fishies` permission
to execute (`chmod +x bin/fishies`), then just run `fishies` command 
(or `./bin/fishies`, if `bin` dir is not at your system `$PATH`) =)

## License

[MIT](https://github.com/fdaciuk/licenses/blob/master/MIT-LICENSE.md) @ Fernando Daciuk
