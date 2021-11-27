# Pmareke's macOS Setup

## Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Run `brew analytics off`.

## GitHub SSH key

- Generate key with a password:

```sh
ssh-keygen -f $HOME/.ssh/github_rsa
```

- Add key to the keychain:

```sh
ssh-add $HOME/.ssh/github_rsa # company-installed
/usr/bin/ssh-add $HOME/.ssh/github_rsa # system
```

- Upload the key to GitHub. https://github.com/settings/keys:

```sh
cat ~/.ssh/github_rsa.pub| pbcopy
```

- Test connection:

```sh
ssh -T git@github.com -i ~/.ssh/github_rsa
```

- Clone this repo:

```sh
git clone git@github.com:pmareke/dotfiles.git
```

## OS Settings

- Run `mac_setup.sh` script.
- Run `git_setup.sh` script.
- Restart the laptop to apply changes.

## Installing software via Homebrew

All software installed on the system must be listed in `Brewfile`.

- Run `cp Brewfile ~/.Brewfile`

```sh
brew bundle --global
```

## Shell

- Add `iterm` profile `iterm.json`.
- Install `oh-my-zsh`: https://github.com/robbyrussell/oh-my-zsh
- Install `VSCode` theme: https://github.com/tallpants/vscode-theme-iterm2
- Copy `z.sh` to `~/`

## Node

```sh  
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

## Vim Plugin Manager

- Instal Vim Plug

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Karabiner

- Copy the `karabiner.json` file into the app config folder.

## GPG key

1. Generate keys:

```sh
keybase pgp gen --multi
```

2. Run `gpg --list-signatures` and copy the serial numbernext to "sig" (it's 3B9A89CAE5009078 below):
   
3. Configure git to automatically gpgsign commits. This consists of pointing git to your signing key ID, and then enabling commit automatic signing.

```sh
git config --global user.signingkey <PUB-ID>
git config --global commit.gpgsign true
```

4. Copy the publickey into your clipboard:

```sh
keybase pgp export -q <PUB-ID> | pbcopy
```

5. Open https://github.com/settings/keys and paste the public key there.
