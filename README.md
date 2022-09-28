# .dotfiles

## Step

1 - Symlink dotfiles to home directory

- `.zshrc` `ln -s ~/Sites/dotFiles/.zshrc ~/.zshrc`
- `.zprofile` `ln -s ~/Sites/dotFiles/.zprofile ~/.zprofile`
- `.zshenv` `ln -s ~/Sites/dotFiles/.zshenv ~/.zshenv`
- `.hyper.js` `ln -s ~/Sites/dotFiles/hyper.js ~/.hyper.js`
- `.config/` `ln -s ~/Sites/dotFiles/config ~/.config/`
- `.nvmrc` `ln -s ~/Sites/dotFiles/.nvmrc ~/.nvmrc`
- `.gitconfig` `ln -s ~/Sites/dotFiles/.gitconfig ~/.gitconfig`
- `.gitignore_global` `ln -s ~/Sites/dotFiles/.gitignore_global ~/.gitignore_global`

1 - Install Brew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

1 - Run brew installation `./brew.sh`

1 - Create NVM folder at the home directory `mkdir ~/.nvm`


## TODO
- [ ] Find the defaults value to change the search engine in safari