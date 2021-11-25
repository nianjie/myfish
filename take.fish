function take --description 'mkdir then cd into it.'
  command mkdir -p $argv
  and cd $argv
end
