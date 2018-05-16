set -l CONFIG (dirname $argv)

# Listeners ####################################################################

for listener in $CONFIG/listeners/*; source $listener; end

set -x HOST localhost

# CDPATH #######################################################################

set -x CDPATH $CDPATH .
set -x CDPATH $CDPATH $HOME
set -x CDPATH $CDPATH ~/Studio/Development
set -x CDPATH $CDPATH ~/Studio/Development/*
set -x CDPATH $CDPATH ~/Studio/Development/*/*
set -x CDPATH $CDPATH ~/Studio/Development/*/matter/*
set -x CDPATH $CDPATH ~/Studio/Development/*/matter/*/*
set -x CDPATH $CDPATH ~/Studio/Development/*/matter/*/*/*

# PATH #########################################################################

# Go ###########################################################################
set -x GOPATH ~/.go
set -x PATH /usr/local/opt/go/libexec/bin $PATH

# Java #########################################################################

set -x JAVA_HOME (/usr/libexec/java_home)

# JDK ##########################################################################

# set -l JDK_LOCATION /System/Library/Frameworks/JavaVM.framework
# set -l JDK_VERSION 1.6
# set -x PATH $JDK_LOCATION/Versions/Current/Home/bin $PATH

# Kafka ########################################################################

# set -x KAFKA_HOME "/usr/local/opt/kafka"
# set -x KAFKA_HOME_LIBEXEC "$KAFKA_HOME/libexec"
# set -x PATH $KAFKA_HOME/bin $PATH

# Zookeeper ####################################################################

# set -x ZOOKEEPER_HOST "localhost:2181"

# MXJ ##########################################################################

# set -x CLASSPATH "/Applications/Max/Cycling '74/java/lib/max.jar" $CLASSPATH
# set -x CLASSPATH "/Applications/Max/Cycling '74/java/lib/classes" $CLASSPATH
# set -x CLASSPATH ~/Studio/Music/Max/Packages $CLASSPATH

# Node ##########################################################################

set -x NODE_PATH /usr/local/lib/node_modules/npm

# ZeroMQ
# set -x PKG_CONFIG_PATH /usr/local/Cellar/zeromq/4.1.3/lib/pkgconfig

set -x PATH ~/bin $PATH
set -x PATH ./node_modules/.bin $PATH
set -x PATH ./bin $PATH

# Editor
set -x EDITOR "subl -w"

# Aliases
# alias rmdir "find $1 .DS_Store -delete; rmdir $1" # or something, or like count-files-in . --named .DS_Store
# >> file # ls
# >> file ls # show contents
# or just some dumb command that cats if short text, executes with help or man or whatever if binary (As if), shows folder & project if git.

alias vp "vuepress"

alias be "bundle exec"
alias mm "bundle exec middleman"

alias . "cd .."
alias .. "cd ../.."
alias ... "cd ../../.."
alias .... "cd ../../../.."
alias ..... "cd ../../../../.."
alias ...... "cd ../../../../../.."
alias ....... "cd ../../../../../../.."

alias to-api     to-matter-guapi
alias to-guapi   to-matter-guapi
alias to-node-0  to-matter-node-0
alias to-node-hh to-matter-node-hh

# CHRUBY annoyingly fucks with the $PATH...
# Best commented out... so run `chruby` instead when required.
# source /usr/local/share/chruby/chruby.fish
# source /usr/local/share/chruby/auto.fish
