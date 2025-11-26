if status is-interactive
  eval (keychain --eval -Q -q --noask ~/.ssh/id_ed25519)
end

thefuck --alias | source

fish_vi_key_bindings
