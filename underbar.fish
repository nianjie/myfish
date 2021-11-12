function underbar --description 'gulp every bit you put out into underbar'
  if not commandline | string length -q
    commandline -r $hisotry[1]
  end
  fish_commandline_prepend 'set -g _ ('
  fish_commandline_append ')'
end
