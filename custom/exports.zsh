function setup_user_path {
  NEW_PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
  if [[ $DISABLE_MACPORTS == false ]]; then
    NEW_PATH="/opt/local/bin:/opt/local/sbin:$NEW_PATH"
  fi
  NEW_PATH="/usr/local/bin:/usr/local/sbin:$NEW_PATH" # Homebrew s/bin - make sure it comes first

  # # Extra stuff, added to the end of the path
  NEW_PATH="$NEW_PATH:/Users/caius/bin" # Local Stuff

  export PATH=$NEW_PATH
}

function setup_user_man_paths {
  NEW_PATH="/usr/share/man:/usr/local/share/man:/usr/X11/man"
  if [[ $DISABLE_MACPORTS == false ]]; then
    NEW_PATH="/opt/local/share/man:$NEW_PATH" # macports man path
  fi
  NEW_PATH="/Users/caius/man:$NEW_PATH"

  export MANPATH=$NEW_PATH
}

function disable_macports {
  export DISABLE_MACPORTS=true
  setup_user_path
  setup_user_man_paths
}

function enable_macports {
  export DISABLE_MACPORTS=false
  setup_user_path
  setup_user_man_paths
}

# Sets up our usual $[MAN]PATH for us too
enable_macports

export RUBYOPT=rubygems
export JEWELER_OPTS="--rspec"

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Textmate required
export LC_CTYPE=en_US.UTF-8
export LANG=en_GB.UTF-8

export SVN_EDITOR="nano"
export HGEDITOR="nano"
export GIT_EDITOR="nano"
export EDITOR='nano'

export PYTHONPATH=/usr/local/lib/python2.6/site-packages

export MAKEFLAGS='-j1'

# Twitter performance tweaks for REE
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
