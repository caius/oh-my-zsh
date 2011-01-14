# make sure Homebrew s/bin comes first
PATH="/Users/caius/bin:/usr/local/Cellar/jruby/1.5.6/jruby/bin"
PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export PATH

# And the same for the manpath
export MANPATH="/Users/caius/man:/usr/share/man:/usr/local/share/man:/usr/X11/man"

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# Textmate required
export LC_CTYPE=en_US.UTF-8
export LANG=en_GB.UTF-8

# Editors
export SVN_EDITOR="mate -wl1"
export HGEDITOR="mate -wl1"
export GIT_EDITOR="mate -wl1"
export EDITOR='mate'

# Fuck you python
export PYTHONPATH="/usr/local/lib/python2.6/site-packages"

# Fuck you make
export MAKEFLAGS='-j4'

# Twitter performance tweaks for REE
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# jumping on that there node bandwagon
export NODE_PATH="/usr/local/lib/node"
