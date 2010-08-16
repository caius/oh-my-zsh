# ss            # => ./script/server
# ss 3001       # => ./script/server -p 3001
# ss test       # => ./script/server -e test
# ss test 3001  # => ./script/server -e test -p 3001
function ss {
  if [[ -z "$1" ]]; then
    ruby script/server
  elif [[ -z "$2" ]]; then
    # Is it a port or an environment?
    if [[ "$1" =~ [0-9]+ ]]; then
      # Its a port
      ruby script/server -p $1
    else # its an env name
      ruby script/server -e $1
    fi
  else
    ruby script/server -e $1 -p $2
  fi
}

## Encrypted Image stuff
function open_and_cd_to_disk_image {
  LOCATION="$HOME"
  if [ ! -d "/Volumes/$1" ]; then
    # We need to search various types of disk image extensions
    FILE="$LOCATION/$1"
    FOUND=false
    if [[ -e "$FILE.sparsebundle" ]]; then
      FILE="$FILE.sparsebundle"
      FOUND=true
    elif [[ -e "$FILE.sparseimage" ]]; then
      FILE="$FILE.sparseimage"
      FOUND=true
    fi
    # If we found anything, then open it
    if [[ $FOUND == true ]]; then
      open -W "$FILE"
    fi
  fi
  if [ -d "/Volumes/$1" ]; then
    cd "/Volumes/$1/"
    return 0;
  else
    echo "Doesn't look like $1 got mounted."
    return 1;
  fi
}

# Switch to ree before running the command, then switch
# back to default
function ree () {
  rvm use ree
  $@
  rvm use default
}

# Run the command, and ding when done
function ding () {
  $@
  beep
}

# Runs `git push` before `cap deploy`
# Otherwise just passes through to `cap`
function cap {
  CAP=$(whence -p cap)
  if [[ "$1" == "deploy" || "$2" == "deploy" || "$3" == "deploy" ]]; then
    git push && $CAP $*
  else
    $CAP $*
  fi
}

## My magical git function ##
# Adds various checks to `git` as detailed below:
#  * Makes sure you've run your specs/features before pushing
#  * Asks for confirmation before committing on master
function git {
  GIT=$(whence -p git)
  CONTINUE=true

  # git push
  # Checks if there are spec/ or features/ folders and
  # questions the user if they have been run if they exist.
  if [[ "$1" == "push" ]]; then

    # Check if spec/ exists
    if [[ -e spec ]]; then
      CONTINUE=false # fail by default
      # Ask the user
      echo -n "Have you run your specs? [Y/n]"
      read a
      if [[ $a == "Y" || $a == "y" || $a == "" ]]; then
        CONTINUE=true
      fi
    fi

    # Check if features/ exists
    if [[ -e features ]]; then
      CONTINUE=false # fail by default
      # Ask the user
      echo -n "Have you run your features? [Y/n]"
      read a
      if [[ $a == "Y" || $a == "y" || $a == "" ]]; then
        CONTINUE=true
      fi
    fi
  fi
  # Run the command if we've been told to.
  # The default is to run the command so this only
  # fires if a check has disabled it.
  if [[ $CONTINUE == true ]]; then
    $GIT $*
  fi
}


# Removes macports from the $PATH before installing anything with homebrew
function brew {
  disable_macports
  /usr/local/bin/brew $*
  enable_macports
}

# Lets you call `rake features` or `rake features FEATURE=` easily to specify running either one or all of your cucumber tests.
# USAGE: `rf` runs everything
#        `rf features/foo.feature` runs just foo.features
#        `rf features/foo.feature:12` runs the scenario on line 12 of foo.features
function rf {
  if [[ -z "$1" ]]; then
    rake features
  else
    rake features FEATURE="$1"
  fi
}
