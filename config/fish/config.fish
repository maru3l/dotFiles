starship init fish | source
op completion fish | source

set fish_greeting
set --universal nvm_default_version v16.13.2

# Rebind
alias ls='lsd'
alias ll='lsd -la'
alias cat='bat'
alias top='htop'

# JAVA
alias java8="sdk use java 8.0.322-zulu"
alias java11="sdk use java 11.0.15-zulu"
