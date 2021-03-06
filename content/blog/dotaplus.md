---
date: "2018-07-04T00:00:00Z"
title: Using statistics to find whether DoTA Plus is pay2win
---

<b>TL;DR</b> No.

Note: I did this study few months ago, got bored of it and forgot about it.
Most of the writeup here is what I wrote back then.

Context (skippable)
=====

Few months ago, Valve introduced Dota Plus, a Dota 2 subscription service which
replaces the traditional battle passes for Majors. Among many other things, the
service offers the dota plus assistant, which is an in-game helper providing
players individual stats and on the fly suggestions about items and abilities.
Third party tools exist which replicate some of these features and dota plus
just offers a convenient alternative.  However, the helper being behind a
paywall raises question regarding the fairness of a game when a player with
access to these features is pitted against a player without it.

Background
=====
Assume we have a list of games stripped of all the information, a coin toss
will be an ideal way to predict the outcome of these games. 
Consider games where information about all the variables (hero picks, kills,
items, etc) are available. There are ways to predict the outcome of such games
which are better than a coin toss since there is a correlation between the
outcome and variables like hero picks. Lets discuss the case where the only
information we have is the anime preference of each player in the game. Over a
large number of games, the win probability that the players who likes
Eromanga-sensei should be the same as that of the players who likes Keijo,
which is 50%. I have no way to verify these claims, but if true, it proves that
anime preferences have no correlation with the outcome of a game. Does dota+
help players win more?

A brief note regarding statistical significance. I assume every game to be an
outcome of a bernoulli trial (a coin toss). The null hypothesis (the accepted
truth) being that the probability of a win is 50%<sup>*</sup>. The alternative hypothesis is
the win probability computed using the observed data. The probability of observing the same
thing under the null hypothesis is computed. If this value is less than 1%, we
can reject the null hypothesis and accept the alternative hypothesis.

<sup>*</sup>: The fact that dire wins less than radiant doesn't matter since we
are not measuring the impact of that factor. Over a large amount of data, a
player is equally likely to be on either team.


I used the [node-dota2](https://github.com/Arcana/node-dota2) project to check
whether a given player is subscribed to dota plus.
I started off with 23k games and quickly discovered a bias which forced me to
change my experiment design and get more data.

<b><i>
"Teams with more players who have enabled 3rd party sharing of data (for dotabuff/opendota) have 52.30% chance of winning the game."
</i></b>

Players require to enable third party data sharing in order to use websites
like opendota/dotabuff. For sake of brevity, I will call them "known players".
Teams with more number of known players won 52.30% of their games
(statistically significant, p&lt;0.00001). It is probably a mix of correlation
and causation since people who use opendota/dotabuff are more inclined towards
improving themselves and are able to do so through insights provided by these
tools.  I can only get dota+ status of known players (no easy way to know
player id of unknown players). My experiment will not be fair because I cannot
generalize the probability of an unknown player having Dota+ (what if they are
less likely to get a Dota+ subscription than a person who uses opendota).

I chose to get rid of this problem by sampling large number of games where
the number of known players in both the teams were the same. I fetched ~109k
such games with ~380k players. Most of these games were from March 13th, 2018.

<b><i>
"Teams with more dota+ subscribers have a 52.51% chance of winning the game."
</i></b>

Among the ~109k games, there were ~60k games with a difference in the number of
dota+ subscribers between radiant and dire. The team with more dota+
subscribers won 52% of their games (statistically significant, p&lt;0.000001).
We could claim a similar explanation as before: people who subscribed to dota+
probably spend more time in the game and are thus likely to be better than
those who don't. 

We can eliminate these arguments by comparing performance of
players before and after they got their dota+ sub. While the volatality
of the comparisons among an individual player would be very high, aggregating
this data over a large number of players should provide an accurate statistics.
I calculated win percentage of each player before and after getting dota+ (using
equal number of games). We now have two distributions of win percentages, based
on observations of win percentages before and after getting dota+.

<b><i>
"Players saw an average increase of 0.38% in their win rate after subscribing to dota+"
</i></b>

A valid argument could be that people who subscribed to dota+ tend to play
their favorite heroes more in order to level up their relics/hero levels,
explaining the increased win rate.

Instead of comparing winrates at the player-level, we can compare winrates at
(player+hero)-level before and after getting the subscription. But, a valid
argument could be that we get better with a hero the more we play that hero,
hence explaining the difference. This is getting annoying, and at this point, I
am done with this study. So the conclusion is: No, having dotaplus won't
increase your mmr by 5k.
