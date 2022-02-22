# Chauvet

A (somewhat) amber-yellow colorscheme for Vim.
To install use this URL with your package manager (see [Install](#Installation))
```
  https://github.com/dotmpe/chauvet-vim.git
```

![Vim Terminal Screenshot with Chauvet](screenshot.png)
*Showing off insert mode, Airline, Tabline, vim-help, NERDTree and a new buffer*

In its current reincarnation, Chauvet is a dark-background theme with bright orange, moss-green and electric purple/blue.

Chauvet is named after the cave which holds the worlds oldest known paintings,
which France made a 62.5 million dollar "simulacrum" of.


## Intro
Themes in part are a very personal business. Everyone has their preferences.
At least themes should produce legible interfaces. And personally I prefer schemes with only few different colours, and some additional grey or pale-ish shades. To "mute" excessive information on the screen.

This is where the (virtual) terminal matters. And that only can be a long ride to figure out. For a long time I was happy I could load the Tango Palette as the 16-colours to use, and I think I stuck with the `desert` color scheme for a long time. It looked nice, and did not require anything tedious.

Also, if I enable the 'bold text in bright colors' option of the terminal app, then there are just enough white/grey shades to make me happy.
There's a bright white for formatting the essentials, and regular and grey ("bold black") for the rest.
Very useful to format less-prominent data such as datetimes, paths, and all those sorts of character-dense outputs.
Having two shades of the Tango colors was very nice, and if used sparingly was perfect for many years of use.
No need for RGB, gvim, TERM this or that or editor such or add-on whatever. Just Vim and anything Xterm-like.

I found out about `Mustang` by ~hcalves when I installed powerline for Vim. That I must have used for about 5 years now, and I like it a lot. Strings are green. Identifiers too. Keywords are purple and that is all! No more prominent color details, all the rest is grey, regular or a paleish yellow.

Its not that I never looked through the available themes, but everytime I did there just wasn't any that was nice enough or even usable enough to remember.
And also lots of times "it depends", meaning on the terminal and the exact palette that used. Even with xterm there may be conflicts with X11 but I have not checked that out yet (or had problems).

But anyway. Mustang is a very bright green. And its not only in the Vim syntax anymore. It is in Vim Airline (using the `powerlineish` theme) as well. And with `tmuxline` I can more-or-less copy it to my tmux status configuration as well. For my tmux configuration however I have been editing two or three of these tmuxline 'exports' for a while now, and one is completely in orange shades. Its called 'amber' and I've used it for generic cases where I did not feel like generating some specific tmuxline file from an airline theme (and I only
And the Mustang green is too "neon" to go so well with the orange shades.

### Goals
With Chauvet I'd like to produce a matching Vim Syntax and Airline theme, and one for the tmux status bar.

Using orange as the primary prominent color.

Orange and yellow shades to remind of the amber fluorescent displays.
I still want a completely yellow/orange variant one day, but need to figure out about package, dist, tooling etc. for multiple releases. For now just one, dark color scheme with a dominant orange/brown/yellow.

Supplemented by a somewhat muted green green (maybe a complementary of an orange shade)
and a bit of blue/purpleish for a few details.

Currently it turned out like with some shades of brown, a pale-greenish yellow.
All seems lot like forest colours: browns and moss-green.
With a mushroom orange, and electric or iris blue and purple.


## Installation
Point your package manager to this Git URL and then use `coloscheme chauvet` in your settings.
```
  https://github.com/dotmpe/chauvet-vim.git
```

If you do not have a Vim add-on package manager, you know what to do.
(I.e. either:

1. Get one. [Vim plug](https://github.com/junegunn/vim-plug) has 25k stars.
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
- TODO: replace syntastic with ALE and fix signs
- TODO: fix nice airline status and tmux theme as well
* TODO: figure out vim-pandoc
* TODO: see how QuickUI goes about coloring things
* TODO: create super-project with tmux, airline and vim colors subprojects
  Probably want something like
  <https://github.com/mswift42/themecreator>
  <https://mswift42.github.io/themecreator/#>
  on GH.

  But first should probably finally go and see what base16 is all about.
  <https://github.com/chriskempson/base16>

### Changes
2022-02-22
: This is as dark as I want to go. The lightest part is the empty `NonText` part
  of a buffer and I sort of like it like that. This may not work on every screen, need build variants for different preferences/restraints.

  Started vim-spell additions. Made note of Vimdiff. Added `FoldColumn`.

  Only vim-pandoc is still doing its own thing.
  
2022-02-20
: Looking at [Mustang](screenshot-mustang-airline.png) today and looked for 
  variants.

  Found Vitamins by same author but seems focussed on GUI.
  Looked like a nice orange/brown colorscheme, except in my terminal.
  (I find it too bright, pink and yellow in my terminal.)

  So made my own first VIM colorscheme, testing in Xterm and gnome terminal
  with 256 colors palette.
