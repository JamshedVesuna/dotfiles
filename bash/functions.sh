#################
#   Functions   #
#################

# Changes directory and lists the content inside
function cdl () {
     cd $1
     ls -CFh
}

# Make directory and cd into it
mcd () { mkdir "$1" && cd "$1"; }

# goto *any folder* Added support for any computer user
goto () {
    # concatenate all further command line variables
    FOLDER=""
    for word in "$@"; do
      FOLDER="$FOLDER $word"
    done
    FOLDER=${FOLDER:1}

    # get the prune names from the .gotoignore file if it exists
    PRNAMES=".git .hg .svn .cache .cinnamon .atom .gnome .gnome2 .node-gyp .npm .pip .steam .ssh .vagrant.d"
    if [ -e ~/.gotoignore ]; then
      PRNAMES="$PRNAMES $(cat ~/.gotoignore | tr "\n" " ")"
    fi

    # for now, still ignore the precanned folders
    PRPATHS="$HOME/builds $HOME/Library $HOME/Music $HOME/Pictures $HOME/Applications $HOME/Public"

    # updatedb is different for mac than linux
    if [ "$OS" = "Darwin" ]; then
        updatedb --localpaths="$HOME" --prunepaths="$PRPATHS" --output="$HOME/.cache/goto.db"
    else
        # update the database
        updatedb --prunenames "$PRNAMES" --prunepaths "$PRPATHS" -l 0 -U ~/ -o ~/.cache/goto.db
    fi

    # and then search it
    DIR=$(locate -d ~/.cache/goto.db -i "$FOLDER" | awk '{print length, $0}' | head -1 | sed 's/[0-9]*\s//')

    # only CD if the folder exists
    if [ -d "$DIR" ]; then
        cd "$DIR"
    else
        echo "Couldn't find $FOLDER"
    fi
}

# cd no matter what
cdmagic() {
    #!/bin/bash
    DIRECTORY=$1
    # backlslashes before command removes the alias
    \cd "$DIRECTORY" 2> /tmp/_cdmagic_result
    if [ "$DIRECTORY" == "" ]; then
        \cd ~
    fi
    RESULT=$(</tmp/_cdmagic_result)
    if [ "$RESULT" == "" ]; then
        return
    fi
    NEW_PATH="./"
    IFS="/"
    for folder in ${DIRECTORY[@]}; do
        dir_list=$(ls -1Fa "$NEW_PATH" | grep /)
        include_amt=${#folder}
        found="false"
        while [ "$include_amt" -gt 0 ]; do
            # grep the result
            RESULT=$(echo "$dir_list" | egrep -i "^(${folder:0:$include_amt})")
            if [ "$RESULT" != "" ]; then
                # set IFS to newline
                IFS=$'\n'
                RESULT=($RESULT)

                # only echo out the first result
                NEW_PATH="${NEW_PATH}${RESULT[0]}"

                # set it back
                IFS="/"
                found="true"
                break
            fi
            # subtract one from the include amount
            include_amt=$(($include_amt - 1))
        done
        if [ "$found" == "false" ]; then
            echo "couldn't find $DIRECTORY"
            return
        fi
    done
    \cd "$NEW_PATH"
}

# cd to the git root
cdgroot() {
    original_folder=$(pwd)
    while [ true ]; do
        git_folder=$(ls -1Fa . | grep ".git/")
        # if none found, go back to original folder
        if [ "$(pwd)" == "/" ]; then
            cd "$original_folder"
            return
        fi
        # keep cding out until you reach a dir with .git/ in it
        if [ "$git_folder" == "" ]; then
            cd ..
        else
            return
        fi
    done
}

# Only show the process I'm interested in, ex gtop python
gtop() {
  # ensure proper usage
  if [ "$#" -eq "0" ]; then
    echo "gTop: Search running programs on your system"
    echo "Usage: gtop [program name]"
    return 1
  fi

  # get list of programs
  PROGRAMS=""
  for P in $@; do
    PROGRAMS="$PROGRAMS $P"
  done

  PIDS=$(pidof $PROGRAMS | sed 's/[ |\n]/,/g')
  if [ "${#PIDS}" -eq "0" ]; then
    echo "gTop: No provided programs are running on this system"
    return 0
  fi

  top -p $PIDS
}

# If Dropbox is installed, copy a public url to the given file
puburl() {
  if ! type "dropbox" > /dev/null; then
    echo "You don't have Dropbox installed"
  else
    DROPBOXPATH=~/Dropbox/Public
    cp -r $1 $DROPBOXPATH
    PUBPATH=$(dropbox puburl $DROPBOXPATH/$1)
    echo $PUBPATH | xclip -selection clipboard
    echo "The following has been copied to your Public Folder:" $1
    echo "Public URL:" $PUBPATH
  fi
}

# runs an application, piping its output to /dev/null and forks to background
launch() {
  # concatenate all further command line variables
  COMMAND=""
  for word in "$@"; do
    COMMAND="$COMMAND $word"
  done
  COMMAND=${COMMAND:1}

  $COMMAND </dev/null &> /dev/null &

  # disown newly forked child
  disown
}

# Color coded man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
