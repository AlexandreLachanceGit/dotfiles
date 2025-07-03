if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

zoxide init fish | source
alias cd="z"
alias gaa="git add -A; git status"
alias bench="uvx --from frappe-bench bench"

function n
    set project (zoxide query $argv)
    or return 1

    cd $project

    set cmd "nvim ."
    if test -f uv.lock
        set cmd "uv run $cmd"
    end

    if test -n "$TMUX"
        eval $cmd
    else
        tmux new-session $cmd
    end
end

