if status is-interactive
  eval (keychain --eval -Q -q --noask ~/.ssh/id_ed25519 ~/.ssh/maven_rajman)
  
  set -gx PATH $HOME/.jenv/bin $PATH
  source (jenv init --no-rehash - | psub)
end

fish_vi_key_bindings
