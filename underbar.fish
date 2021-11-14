function underbar --description 'gulp every bit you put out into underbar'
  if not commandline | string length -q
    commandline -r $history[1]
  end
  fish_commandline_prepend 'set -g underbar ('
  fish_commandline_append ')'
end
