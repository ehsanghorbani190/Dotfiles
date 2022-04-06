# Nvim Guide 
This file contains keybindings for my installed nvim plugins, and usefull vim keybindings.

## Commentary
|Key Sequence|Command Desceription|
|:----------:|:-------------------|
|`gcc`       |Toggle comment on a line|
|`gc`        |Toggle comments on motion/selection|
|`gcgc`      |Uncomment some adjancent comments|

## Surround
|Key Sequence|Command Desceription|
|:----------:|:-------------------|
|`yss`<str>  |Surround current line with <str>|
|`ds`<str>   |Delete <str> surround on current surround|
|`ys{$i}w`<str>|Surround $i words with <str>|
|`cs`<str><nsr>|Replace <str> surrounding with <nsr>|

##CtrlP
|Key Sequence|Command Desceription|
|:----------:|:-------------------|
|Ctrl + p    |Open CtrlP. You need to open CtrlP first to use other keybindings|
|Ctrl + d    |Toggle search by file name|
|Ctrl + r    |Toggle regex mode|
|Ctrl + [j/k]|Go [down/up] in search results|
|Ctrl + t    |Open selected file in new tab|
|Ctrl + [v/x]|Open selected file in [vertical/horizontal] split|
|Ctrl + [n/p]|Go [forward/backward] in search input history|
|Ctrl + y    |Create file and all of its parent folders(which are entered in input) and open it in new tab|
|Ctrl + z    |Toggle mark on selected file|
|Ctrl + o    |Open marked files|

##KeyBindings
|Key Sequence|Command Desceription|
|:----------:|:-------------------|
|Ctrl + t    |Toggle tagbar|
|Ctrl + l    |Go to defenition with Coc|

##CocPlugins
* coc-css
* coc-eslint
* coc-json
* coc-pairs
* coc-prettier
* coc-snippets
* coc-tsserver
