#!/bin/sh
DELAY=2

### auto update first ###
echo "### auto update first ###"
sudo apt-get update
sleep $DELAY

### install vim edito r###
echo "### install vim edito r###"
sudo apt-get install -y vim
sleep $DELAY

### install minicom ###
echo "### install minicom ###"
sudo apt-get install -y minicom
sleep $DELAY

### install sshpass ###
echo "### install sshpass ###"
sudo apt-get install -y sshpass
sleep $DELAY 

### install git ###
echo "### install git ###"
sudo apt-get install -y git
sleep $DELAY

### install and config tmux ###
echo "### install and config tmux ###"
sudo apt-get install -y tmux

### install tools search ####
echo "### install tools search ####"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

### sync environment ###
echo "### sync environment ###"
source ~/.bashrc

# change user mode for minicom"
sudo usermod -a -G dialout $USER
