# Chauvet

A (somewhat) amber-yellow colorscheme for Vim.
To install use this URL with your package manager (see [Install](#Installation))
```
  https://github.com/dotmpe/chauvet-vim.git
```

![Vim Terminal Screenshot with Chauvet](https://user-images.githubusercontent.com/310639/155468051-f17d2775-e6b9-47ef-b8f5-7bb662098f7f.png)
*Showing off insert mode, Airline, Tabline, vim-help, NERDTree and a new buffer*

## Installation
Point your package manager to this Git URL and then use `coloscheme chauvet` in your settings.
```
  https://github.com/dotmpe/chauvet-vim.git
```

If you do not have a Vim add-on package manager, you know what to do.
(I.e. either:

1. Get one. I use Pathogen, but I need to manage updates with something else.
   But [Vim plug](https://github.com/junegunn/vim-plug) has 25k stars.
2. Have a look at `:set runtimepath?` or `:help runtimepath` to see where you need to put `chauvet.vim`. (Probably in `~/.vim/colors/`.))

After installing, test with
```
:colo chauvet
```

And add the setting to your `~/.vimrc`'s.

TIP: you can also use different themes per shell environment,
and still have a default if none given.
```vim
if $VIM_THEME == ""
  let $VIM_THEME="chauvet"
endif
colorscheme $VIM_THEME

if $VIM_AIRLINE_THEME == ""
  let $VIM_AIRLINE_THEME="chauvet"
endif

if "$VIM_AIRLINE_THEME" != "" | let g:airline_theme = $VIM_AIRLINE_THEME | endif
```

## Status

Maintained. See [Chauvet main project](https://github.com/dotmpe/chauvet) for on-going development.
