function egrep --wraps=grep --description 'alias egrep=egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
 command egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox} $argv; 
end
