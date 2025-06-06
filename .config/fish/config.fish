if status is-interactive
    # Commands to run in interactive sessions can go here
    # I'm trying to grow a neckbeard
  # fish_vi_key_bindings
  # Set the cursor shapes for the different vi modes.
  set fish_cursor_default     block      blink
  set fish_cursor_insert      line       blink
  set fish_cursor_replace_one underscore blink
  set fish_cursor_visual      block
end

# pnpm
set -gx PNPM_HOME "/home/tafsen/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


# paths
fish_add_path -m ~/.local/bin
fish_add_path /usr/local/go/bin
fish_add_path /opt/gradle/gradle-8.12.1/bin

# alias

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# vi mode

fish_vi_key_bindings

function fish_user_key_bindings
  bind -M insert -m default jj backward-char force-repaint
end

set fish_vi_force_cursor 1

function fish_prompt
  echo " "
end

function reboot-to-windows
    set WINDOWS_TITLE (sudo grep -i "^menuentry 'Windows" /boot/grub/grub.cfg | head -n 1 | cut -d"'" -f2)
    sudo grub-reboot $WINDOWS_TITLE
    sudo reboot
end

if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end
