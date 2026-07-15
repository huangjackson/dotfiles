# Dotfiles

My MacOS + zsh config files.

## Install

1. Clone and init submodules:
    ```bash
    git clone https://github.com/huangjackson/dotfiles.git ~/.config
    cd ~/.config && git submodule update --init --recursive
    ```

2. Install packages:
    ```bash
    brew bundle install --file Brewfile
    ```

3. Apply macOS defaults (requires restart):
    ```bash
    zsh .macos
    ```

4. Symlink `.zshenv` into `~` so environment variables are available to all shells:
    ```bash
    ln -sf ~/.config/zsh/.zshenv ~/.zshenv
    ```

5. Start nvim and run `:Lazy sync` to install Neovim plugins.

## TODO

- [ ] Write an install script
- [ ] Reconfigure nvim from scratch
- [ ] Add SSH config template (`~/.ssh/config`)
- [ ] Set up a local `git config.local` template for auth info
