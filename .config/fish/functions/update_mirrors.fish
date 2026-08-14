function update_mirrors
    if type -q cachyos-rate-mirrors
        sudo cachyos-rate-mirrors
    else
        rate-mirrors \
                        --disable-comments-in-file \
                        --protocol https \
                        arch \
                        | sudo tee /etc/pacman.d/mirrorlist > /dev/null
    end
end
