# Port of the oh-my-zsh eza plugin
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza

status is-interactive; or exit

if type -q eza
    set -l opts --group-directories-first --git --icons=auto

    alias ls "eza $opts"
    alias ll "eza -l $opts"
    alias la "eza -la $opts"

    # Not an alias: `.*` must expand via `set` so an empty match isn't an error
    function ldot --inherit-variable opts
        set -l dots .*
        set -q dots[1]; and eza -ld $opts $dots $argv
    end

    alias lD "eza -lD $opts"
    alias lDD "eza -lDa $opts"
    alias lsd "eza -d $opts"
    alias lsdl "eza -dl $opts"
    alias lS "eza -l -ssize $opts"
    alias lT "eza -l -snewest $opts"
end
