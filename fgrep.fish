function fgrep --description 'alias fgrep=fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
 command fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox} $argv; 
end
