# # Path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH="/opt/local/bin:$PATH" # MacPorts bin
export PATH="/opt/local/sbin:$PATH" # MacPorts sbin
# export PATH="/opt/local/apache2/bin:$PATH" # Apache2
export PATH="$PATH:/Users/caius/bin" # Local Stuff
# export PATH="$PATH:/usr/local/bin:/usr/local/sbin" # /usr/local
export PATH="$PATH:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin" # iplayer
# # Not quite sure why I need these:
# export PATH="$PATH:/Developer/usr/bin"
# export PATH="$PATH:/Developer/usr/sbin"

export MANPATH="/opt/local/share/man:$MANPATH" # macports man path
export MANPATH="/Users/caius/man:$MANPATH"

export RUBYOPT=rubygems
export JEWELER_OPTS="--rspec"

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Textmate required
export LC_CTYPE=en_US.UTF-8
export LANG=en_GB.UTF-8

export SVN_EDITOR="mate -wl1"
export HGEDITOR="mate -wl1"
export GIT_EDITOR="mate -wl1"
export EDITOR='mate'

export PYTHONPATH=/usr/local/lib/python2.6/site-packages

export MAKEFLAGS='-j4'

# Twitter performance tweaks for REE
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
