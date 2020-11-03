if [ $SHELL = "/bin/zsh" ]; then

  # $ brew install zsh-completions
  # 
  # -- snip --
  #
  # ==> Caveats
  # To activate these completions, add the following to your .zshrc:
  # 
  #   if type brew &>/dev/null; then
  #     FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  # 
  #     autoload -Uz compinit
  #     compinit
  #   fi
  # 
  # You may also need to force rebuild `zcompdump`:
  # 
  #   rm -f ~/.zcompdump; compinit
  # 
  # Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
  # to load these completions, you may need to run this:
  # 
  #   chmod go-w '/usr/local/share'
  # ==> Summary
  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  
    autoload -Uz compinit
    compinit
  fi

else 

  echo "zsh..?"

