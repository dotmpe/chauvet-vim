# Chauvet

An (somewhat) amber-yellow colorscheme for Vim.

Chauvet is named after the cave which holds the worlds oldest known paintings,
which France made a 62.5 million dollar "simulacrum" of.

![Vim Terminal Screenshot with Chauvet](screenshot.png)

## Intro
Themes in part are a very personal business. Everyone has their preferences.
At least they should produce legible interfaces. Personally I prefer schemes with few different colours, and more grey shades to "mute" excessive information on the screen.

This is where the (virtual) terminal matters. And that only can be a long ride to figure out. For a long time I was happy I could load the Tango Palette as the 16-colours to use, and I think I stuck with the `desert` color scheme for a long time.

If I enabled the 'bold text in bright colors' option of the terminal app, then I had just enough white/grey shades to make me happy.

I found out about `Mustang` by ~hcalves when I installed powerline for Vim. I must have used that for about 5 years now, and I like it a lot. Strings are green. Identifiers too. Keywords are purple and that is all for the prominent color details, the rest is grey, regular or a paleish yellow.

But it is a very bright green. And its not only in the Vim syntax anymore. It is in Vim Airline (using the `powerlineish` theme) as well. And with `tmuxline` I can more-or-less copy it to my tmux status configuration as well. 

For my tmux configuration however I have been editing two or three of these tmuxline 'exports' for a while now, and one is completely in orange shades. I've called that one amber and used it for generic cases where I did not feel like generating some tmuxline file from airline.

Now with Chauvet I'd like to produce a matching Vim Syntax and Airline theme, and one for the tmux status bar.

Using orange as the primary prominent color.
Suppemented by a somewhat muted green green (maybe a complementary of an orange shade)
and a bit of blue/purpleish for a few details.

Currently it turned out like a few shades of brown, a pale-greenish yellow which all seem a lot like forest colours. With mushroom orange and iris blue and purple.


## Status

Install with package manager and
: colo chauvet

- TODO: replace syntastic with ALE and fix signs
- TODO: fix nice airline status and tmux theme as well

### Changes
2022-02-20
: Looking at Mustang today and variants, found Vitamins by same author.
  Looked like a nice orange/brown colorscheme, except in my terminal.
  So made my own first VIM colorscheme, tested in Xterm and gnome terminal.
