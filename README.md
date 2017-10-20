# dotfiles

I use [gnu stow](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) to manage my dotfiles. This repo is my version controlled collection. 

Yes, my dotfiles are ridiculously simple. This is just enough to make things
nice enough for me.

What you'll find inside:
  - vimrc : it's super simple - numbering, colors, jk for ESC
  - zsh : again super simple - a PS, autocomplete, activate for python, PATH stuff

## installation

Steps:
1. install GNU Stow
2. clone the repo
3. `cd` into the repo
4. run `stow -t ~ [name]` for each "rc" set you want (eg. `stow -t ~ zsh`)

# License

I'm not liable for anything you do with this.

