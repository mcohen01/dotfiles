source ~/.bash/completions/git_completion
complete -C ~/.bash/completions/rake_completion -o default rake
complete -C ~/.bash/completions/project_completion -o default c
complete -C ~/.bash/completions/capistrano_completion -o default cap

for file in ~/.{bash_prompt,exports,aliases,aws_path}; do
  [ -r "$file" ] && source "$file"
done
unset file

shopt -s histappend

shopt -s nocaseglob

shopt -s cdspell
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting