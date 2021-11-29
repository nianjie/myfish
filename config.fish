if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q EDITOR
	set -gx EDITOR vim
    end
    abbr -a -g gaa 'git add --all'
    abbr -a -g gco 'git checkout' 
    abbr -a -g gcb 'git checkout -b'
    abbr -a -g gcam 'git commit -am'
    abbr -a -g gcmsg 'git commit -m'
    abbr -a -g gst 'git status'
    abbr -a -g gsb 'git status -sb'
    abbr -a -g glo 'git log --oneline --decorate'
    abbr -a -g glg 'git log --stat'
    abbr -a -g battery "system_profiler SPPowerDataType | grep 'Cycle Count'"
end
