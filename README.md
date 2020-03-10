# dotfiles

To initialize a new mac.

## Step

1. Setup SSH key & connect to GitHub.
https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh

2. Clone this repository.
```zsh
git clone git@github.com:psycholic4/dotfiles.git
```

3. Setup terminal.
```zsh
./setup-terminal.sh
```

4. Install Applications.
```zsh
./install.sh
```

5. Change Oh-My-Zsh Theme.
Open `.zshrc` and change to `ZSH_THEME="agnoster"`.

6. Add iTerm to security policy.
System Preferences > Security & Privacy > Privacy Tab > Click the lock to make changes > Developer Tools > Add iTerm