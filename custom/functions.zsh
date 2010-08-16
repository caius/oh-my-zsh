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

  # git checkout
  # If you pass "-" as the branch name then it attempts to check out the previous
  # branch you were on, using the contents of .git/previous_branch as the branch name.
  if [[ "$1" == "checkout" || "$1" == "co" ]]; then
    # Check if it's 'checkout -' or an actual branch name
    if [[ "$2" == "-" ]]; then
      # Don't run 'checkout -'
      CONTINUE=false

      # Figure it out from the reflog
      LAST_BRANCH=$(git log -g --oneline | egrep "moving from .*? to $(current_branch)" | head -n1 | awk '{ print $6 }')
      if [[ "$LAST_BRANCH" != "" ]]; then
        $GIT checkout $LAST_BRANCH
      else
        echo "I'm sorry $USER, I'm afraid I can't do that."
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

# Backs up the SMS from my phone
function backup_phone_sms {
  scp caesar:Library/SMS/sms.db ~/Archive/SMS/$(date "+%Y-%m-%d-%H:%M").sqlite3
}
