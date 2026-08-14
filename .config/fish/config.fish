fish_vi_key_bindings --no-erase

function fish_greeting
    fortune | cowsay
end

if status is-interactive
    eval (keychain --eval -q ~/.ssh/github ~/.ssh/gitlab_rajman)

    fish_add_path $HOME/.jenv/bin
    source (jenv init --no-rehash - | psub)
end


set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

alias mirror='update_mirror'
alias update='update_mirror && sudo pacman -Syu'
