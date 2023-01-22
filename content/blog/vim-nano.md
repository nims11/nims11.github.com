---
date: "2019-04-01T00:00:00Z"
title: vim-nano now supports vim8
---

[Try out vim-nano](https://github.com/nims11/vim-nano)

I decided to try Tinder one weekend and after no matches, I started wondering if
it was universe's way of telling me to attend to a far greater cause. It was
then that I realized, vim-nano only supports neovim.  April 1st, what a great
day to announce that vim-nano now supports vim8!!

Back when I initially wrote vim-nano, I relied on the terminal support of neovim
to simulate the top and bottom bar of GNU Nano.  Since vim8 introduced terminal
support, I wanted to make vim-nano compatible with it. It wasn't very
straightforward though. For some reason unknown to me, vim8 and neovim use
different API and behaviour for the terminal. Once dealing with it, I realized
something even more annoying.  Arrow keys in vim8 are actually a sequence which
starts with \<Esc\>. Thus mapping \<Esc\> to \<nop\> breaks arrow keys. Dysfunctional
arrow keys are unacceptable for a seamless GNU Nano experience.  But at the same
time, I don't want the users to be able to get into Normal mode through \<Esc\>
(although it is still possible through alternative means if you really like
spoiling fun).  Although not perfect, someone had a wacky solution for this
(https://github.com/vim/vim/issues/2050). Just map \<Esc\>x to \<Esc\>x!

Just when I thought I was done, I realized a change in the terminal behaviour of
neovim. It didn't autoscroll output anymore for the bottom bar generator! A
python script prints out the bottom toolbar whenever there is a resize. The
autoscroll creates an illusion of responsive toolbar which adapts to resizes.
The solution was to just move the cursor to the end of the bottom bar buffer
after running the python script.

While I started this small project as a joke which adds absolutely nothing to
humanity, I am interested to see how far I can take it through these ugly hacks.
GNU Nano is pretty impressive for what it does and vim-nano is just a crappy
emulation missing a lot of its core features (we have more GNU Nano 4.0 features
to look forward to as well).
