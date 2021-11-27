if not bind -s \eg &>/dev/null
  bind \eg underbar
  bind \ei underbar_show
else
  set -l occupied (bind \eg | string split ' ' --)
  echo \aOops, $occupied[-1].
end
