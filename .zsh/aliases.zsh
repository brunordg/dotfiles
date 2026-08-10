# ============================================================

# Shell Aliases & Functions

# ============================================================

# ============================================================

# General

# ============================================================

alias c="clear"
alias cls="clear"

# Open current directory in Windows Explorer

alias o="explorer.exe ."

# Common directories

alias op="cd ~/Environment"
alias env="cd ~/Environment"

# Chrome

alias chrome="google-chrome --disable-gpu"

# ============================================================

# Navigation

# ============================================================

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias home="cd ~"

# Create directory and enter it

mkcd() {
mkdir -p "$1" && cd "$1"
}

# ============================================================

# LS / Files

# ============================================================

alias ls="ls --color=auto"
alias l="ls -lah"
alias la="ls -lAh"
alias ll="ls -lh"
alias lsa="ls -lah"

# Show directories sorted by size

alias dus='du -sh ./* 2>/dev/null | sort -hr'

# Show disk usage

alias dfh="df -h"

# Sort files by size

alias du-sort='du -sBM * 2>/dev/null | sort -nr'

# Recently modified files

alias recent='ls -lt | head -20'

# ============================================================

# Grep / Search

# ============================================================

alias grep="grep --color=auto"

alias egrep="grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,node_modules}"
alias fgrep="grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,node_modules}"

# Find files by name

ff() {
find . -type f -iname "*$1*"
}

# Find directories by name

fd() {
find . -type d -iname "*$1*"
}

# Find text inside files

# Usage: fgrepx "text"

fgrepx() {
grep -Rni --exclude-dir=.git --exclude-dir=node_modules "$1" .
}

# ============================================================

# Git

# ============================================================

alias g="git"

alias gs="git status"
alias gss="git status --short"

alias ga="git add"
alias gaa="git add --all"

alias gc="git commit"
alias gcm="git commit -m"

alias gp="git push"
alias gpf="git push --force-with-lease"

alias gpl="git pull"

alias gf="git fetch"
alias gfa="git fetch --all --prune"

alias gco="git checkout"
alias gcb="git checkout -b"

alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"

alias gd="git diff"
alias gds="git diff --staged"

alias gr="git restore"
alias grs="git restore --staged"

alias gst="git stash"
alias gstp="git stash pop"
alias gstl="git stash list"

# Git log

alias gl="git log --oneline --decorate --graph"
alias glo="git log --oneline"
alias glog="git log --oneline --graph --decorate --all"

# Show current Git branch

alias gbranch="git branch --show-current"

# Remove merged local branches

alias gbclean='git branch --merged | grep -vE "^*|main|master" | xargs -n 1 git branch -d'

# ============================================================

# Docker

# ============================================================

# Docker containers

alias dk="docker"
alias dkps="docker ps -a"
alias dkpss="docker ps"

# Containers with useful information

alias dkpsf='docker ps -a --format "table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.Ports}}"'

# Container logs

alias dklogs="docker logs"
alias dklogsf="docker logs -f"

# Execute command inside container

alias dkexec="docker exec -it"

# Start / stop / restart

alias dkstart="docker start"
alias dkstop="docker stop"
alias dkrestart="docker restart"

# Remove containers

alias dkrm="docker rm -f"

# Remove ALL containers

alias dkrmall='docker rm -f $(docker ps -a -q)'

# Images

alias dkimg='docker image ls --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}" | sort'
alias dkpull="docker pull"
alias dkpush="docker push"

# Remove image

alias dkrmi="docker rmi -f"

# Volumes

alias dkvlm="docker volume ls"

# Networks

alias dknet="docker network ls"

# Inspect

alias dkinspect="docker inspect"

# Docker disk usage

alias dkdf="docker system df"

# Cleanup unused images/containers/networks

alias dkclean="docker system prune"

# More aggressive cleanup

alias dkcleanall="docker system prune -a"

# ============================================================

# Docker Compose

# ============================================================

alias dc="docker compose"

alias dcu="docker compose up"
alias dcud="docker compose up -d"

alias dcd="docker compose down"

alias dcb="docker compose build"
alias dcub="docker compose up --build"
alias dcudb="docker compose up -d --build"

alias dcr="docker compose restart"

alias dcl="docker compose logs"
alias dclf="docker compose logs -f"

alias dcp="docker compose ps"

alias dcpull="docker compose pull"

alias dce="docker compose exec"

# ============================================================

# LazyDocker

# ============================================================

# Change this path to your actual LazyDocker config directory

alias lzd='docker run --rm -it 
-v /var/run/docker.sock:/var/run/docker.sock 
-v /yourpath/config:/.config/jesseduffield/lazydocker 
lazyteam/lazydocker'

# ============================================================

# Processes / System

# ============================================================

alias top="htop"

# Search running processes

psg() {
ps aux | grep -i "$1" | grep -v grep
}

# Memory

alias mem="free -h"

# Disk

alias dfh="df -h"

# System uptime

alias uptime="uptime -p"

# ============================================================

# Network

# ============================================================

# Show listening ports

alias ports="ss -tulpn"

# Public IP

alias myip="curl -s ifconfig.me && echo"

# DNS lookup

alias dns="nslookup"

# Quick connectivity test

alias pingg="ping 8.8.8.8"

# ============================================================

# Archives

# ============================================================

extract() {
if [ -z "$1" ]; then
echo "Usage: extract <file>"
return 1
fi

```
case "$1" in
    *.tar.gz|*.tgz)
        tar -xzf "$1"
        ;;
    *.tar.bz2)
        tar -xjf "$1"
        ;;
    *.tar.xz)
        tar -xJf "$1"
        ;;
    *.tar)
        tar -xf "$1"
        ;;
    *.zip)
        unzip "$1"
        ;;
    *.gz)
        gunzip "$1"
        ;;
    *.bz2)
        bunzip2 "$1"
        ;;
    *.xz)
        unxz "$1"
        ;;
    *.7z)
        7z x "$1"
        ;;
    *)
        echo "Unsupported archive format: $1"
        return 1
        ;;
esac
```

}

# ============================================================

# File Operations

# ============================================================

# Create empty file

touchf() {
touch "$1"
}

# Backup a file

backup() {
cp "$1" "$1.bak"
}

# Create a timestamped backup

backup-date() {
cp "$1" "$1.$(date +%Y%m%d_%H%M%S).bak"
}

# ============================================================

# Node / NPM

# ============================================================

alias ni="npm install"
alias nid="npm install --save-dev"

alias nr="npm run"
alias nrd="npm run dev"
alias nrb="npm run build"
alias nrt="npm run test"

alias ns="npm start"

# npm global packages

alias ngl="npm list -g --depth=0"

# ============================================================

# Python

# ============================================================

alias py="python3"
alias pip="pip3"

# Create Python virtual environment

venv() {
python3 -m venv .venv
echo "Virtual environment created in .venv"
}

# Activate current project's virtual environment

activate() {
if [ -f ".venv/bin/activate" ]; then
source .venv/bin/activate
else
echo "No .venv/bin/activate found"
return 1
fi
}

# ============================================================

# Kubernetes

# ============================================================

alias k="kubectl"

alias kgp="kubectl get pods"
alias kgs="kubectl get services"
alias kgd="kubectl get deployments"
alias kgn="kubectl get nodes"

alias kd="kubectl describe"

alias kl="kubectl logs"
alias klf="kubectl logs -f"

alias ke="kubectl exec -it"

alias kaf="kubectl apply -f"
alias kdf="kubectl delete -f"

alias kctx="kubectl config current-context"
alias kcontexts="kubectl config get-contexts"

alias kns="kubectl config set-context --current --namespace"

# ============================================================

# Safety / Cleanup

# ============================================================

# Interactive remove

alias rm="rm -i"

# Interactive move/copy

alias cp="cp -i"
alias mv="mv -i"

# ============================================================

# Useful Functions

# ============================================================

# Go to a directory and list its contents

cdd() {
cd "$1" && ls
}

# Create a temporary directory and enter it

tmpcd() {
local dir
dir=$(mktemp -d)
cd "$dir"
}

# Show environment variable

showenv() {
printenv | grep -i "$1"
}

# Kill process by name

killp() {
pkill -f "$1"
}

# ============================================================

# End

# ============================================================
