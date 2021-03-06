function underbar --description 'gulp every char emitted into belly of underbar'
  if not commandline | string length -q
    commandline -r $history[1]
  end

  set -l process (commandline | string collect)
  if set process (string replace -r -- '^set -g underbar \(' '' $process)
     and set process (string replace -r -- '\)$' '' $process)
     commandline --replace -- $process
  else
    set -l cursor (commandline -C)
    commandline -a ')'
    commandline -C 0
    commandline -i 'set -g underbar ('
    set -l fixlength (string length -- 'set -g underbar ()')
    commandline -C (math $fixlength + $cursor)
  end
end
