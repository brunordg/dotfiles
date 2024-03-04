# Alias
# ---
#

#Alias
alias o="explorer.exe ." 
alias op="cd ~/Environment"
alias chrome="google-chrome --disable-gpu"
alias egrep="grep -E --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}"
alias fgrep="grep -F --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}"
alias l="ls -lah"
alias la="ls -lAh"
alias ll="ls -lh"
alias ls="ls --color=tty"
alias lsa="ls -lah"
alias lzd='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v /yourpath/config:/.config/jesseduffield/lazydocker lazyteam/lazydocker'
alias du-sort='du -sBM * | sort -nr'


# Docker aliases (shortcuts)
# List all containers by status using custom format
alias dkps='docker ps -a --format "table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.Ports}}"'

# Removes a container, it requires the container name \ ID as parameter
alias dkrm='docker rm -f $(docker ps -a -q)'

# Removes an image, it requires the image name \ ID as parameter
alias dkrmi='docker rmi -f $(docker images -a -q)'

# Lists all images by repository sorted by tag name
alias dkimg='docker image ls --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}" | sort'

# Lists all persistent volumes
alias dkvlm='docker volume ls'

# Diplays a container log, it requires the image name \ ID as parameter
alias dklogs='docker logs'

# Streams a container log, it requires the image name \ ID as parameter
alias dklogsf='docker logs -f'

# Initiates a session withing a container, it requires the image name \ ID as parameter followed by the word "bash"
alias dkexec='docker exec -it'

# Starts a container, it requires the image name \ ID as parameter
alias dkstart='docker start'

# Stops a container, it requires the image name \ ID as parameter
alias dkstop='docker stop'

# Stops all container
alias dkstopall='docker stop $(docker ps -a -q)'