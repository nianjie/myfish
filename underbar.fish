function underbar --description 'gulp every bit you put out into underbar'
  if not commandline | string length -q
    commandline -r $history[1]
  end

  set -l process (commandline)
  if string match -rq -- 'set -g underbar \((?<process>.*)\)' $process
    commandline -r -- $process
  else
    commandline -a ')'
    commandline -C 0
    commandline -i 'set -g underbar (' 
    commandline -C 0
  end
end
