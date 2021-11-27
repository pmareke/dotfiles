#!/bin/bash
# author
git config --global user.name "Pedro Lopez Mareque"
git config --global user.email "pedro.lopez.mareque@gmail.com"

# pull strategy
git config --global pull.ff only

# use https remotes and osxkeychain for creds
git config --global credential.helper osxkeychain
git config --global url.git\@github\.com\:.pushInsteadOf https://github.com/
git config --global gpg.program "gpg"
git config --global commit.gpgsign true  # if you want to sign every commit

# diff-so-fancy and its color scheme
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

# rebase helper
git config --global sequence.editor interactive-rebase-tool

# git config --global core.editor "vim"
git config --global core.excludesfile ~/.gitignore_global

git config --global init.defaultBranch "main"
