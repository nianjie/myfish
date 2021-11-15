<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="100px" height="100px"/>
<img align="left" width="0" height="100px" hspace="10"/>

A fish function collections for people who use <a href="http://fishshell.com">Fishshell</a>.

#### Requirements
- ***fish*** shell, version 2.2 or later


## Table of contents
* [underbar](#underbar)

### underbar
This function assign the last output into a global variable named `underbar`, similar to the behaviour of `_` when running Python interpreter under interactive mode.
Then you can fetch the output from `$underbar` conveniently in the following operations. 
For example:
```fish
# binding ctrl+g 
$ bind \cG underbar
# type command in command line then press ctrl+g then press enter finally to run the command.
$ echo "foo 
bar"
# get whatever from underbar
$ count $underbar
2
```
The best way to bind would be to bind it with function `fish_user_key_bindings`, which usually exists in `~/.config/fish/functions/`.

As the `underbar` simply reads in command substitution, it has a limit on the size of data it can hold.
> Fish has a default limit of **100 MiB** on the data it will read in a command sustitution.
> This limit can be adjusted with the *fish_read_limit* variable (0 meaning no limit).
