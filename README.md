<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="100px" height="100px"/>


A fish function collections for people who use <a href="http://fishshell.com">Fishshell</a>
<br>
<br>

#### Requirements

- **fish** shell, version 2.2 or later


## Table of contents
* [underbar](#underbar)

## underbar
This function assign the last output into a global variable named `underbar`, similar to the behaviour of `_` when running Python interpreter under interactive mode.
Then you can fetch the output from `$underbar` conveniently in the following operations. 
The best way is to bind it with certain key sequence.
For example:
```fish
# binding ctrl+g 
$ bind \cG underbar
# type command in command line then call it with ctrl+g keys.
$ echo "foo 
bar"
# get whatever from underbar
$ count $underbar
2
```