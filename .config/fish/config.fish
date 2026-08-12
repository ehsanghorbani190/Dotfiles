if status is-interactive
  eval (keychain --eval -q ~/.ssh/github ~/.ssh/gitlab_rajman)
  
  set -gx PATH $HOME/.jenv/bin $PATH
  source (jenv init --no-rehash - | psub)
end

fish_vi_key_bindings
