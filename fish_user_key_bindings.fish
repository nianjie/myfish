if not bind -s \cG &>/dev/null
  bind \cG underbar
else
  set -l occupied (bind \cG | string split ' ' --)
  echo \aOops, $occupied[-1].
end
