# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="Soliah"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/mcohen/.rvm/gems/ruby-1.9.3-p0/bin:/Users/mcohen/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/mcohen/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/mcohen/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/sbin:/Applications/Flash Player Debugger.app/Contents/MacOS:/adchemy/bin:/usr/local/apache-ant-1.8.2:/Users/mcohen/java_third_party/AdobeAir/bin:/usr/local/android-sdk-macosx/platform-tools:/usr/local/Cellar/node/0.6.10/node_modules/uglify-js/bin:/Users/mcohen/.rvm/gems/ruby-1.9.3-p0/bin:/usr/local/vert.x-1.0.1.final/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
