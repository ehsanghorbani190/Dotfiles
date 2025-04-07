if status is-interactive
    # Commands to run in interactive sessions can go here
end

if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c | sed 's/^setenv/set -gx/')
    ssh-add ~/.ssh/id_ed25519 2>/dev/null
end
