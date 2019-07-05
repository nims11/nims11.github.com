---
layout: default_header
---
I am an Engineer at Bloomberg, working on Information Retrieval and
Machine Learning.  Prior to this, I was a <u>MMath</u> student in the <u>School
of Computer Science</u> at <u>University of Waterloo</u>. I was part of the Data
Systems Group and supervised by [Prof. Mark
Smucker](http://www.mansci.uwaterloo.ca/~msmucker/){:target="_blank"}.  Here is
my [list of publications](./publications.html).

<br />
# Interests

I enjoy building things. Unfortunately my
[proudest](https://github.com/nims11/vim-nano){:target="_blank"}
[creations](https://github.com/nims11/dogefy){:target="_blank"} are pretty
useless.

I love doing programming contests. Check out my [Competitive Programming](./coding-contests.html) profiles.

I have an unhealthy obsession with optimizing my workflow and
[ricing](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary#wiki_rice){:target="_blank"}
my [linux environment](./workspace).

In addition to above-mentioned activities, I spend my time playing [Video
Games](./video-game-log.html) (mostly DoTA and JRPGs), watching
[Anime](./anime-hall-of-fame.html) and listening to music (mostly Heavy Metal
and weeb stuff)

<br />
# Latest Posts

<div class="blog">
    <ul>
        {% for post in site.posts limit:5 %}
        <li>
            <span class="date">{{ post.date | date: '%Y %b %d' }}</span> - <a href="{{ post.url }}">{{ post.title }}</a>
        </li>
        {% endfor %}
    </ul>
</div>

<div style="width:100%;text-align:right">
<a href="./blog">--&gt; More</a>
</div>

<br />
# Contact
- nghelani2 <i>\_at\_</i> bloomber <i>\_dot\_</i> net
- nghelani <i>\_at\_</i> uwaterloo <i>\_dot\_</i> ca
- nimeshghelani <i>\_at\_</i> gmail <i>\_dot\_</i> com
- [@nims11](https://twitter.com/nims11){:target="_blank"}

<br />
# Public Key
- [pubkey.asc](./pubkey.asc)
- `gpg --keyserver pgp.mit.edu --recv-key C838FC13F0FD455541C590412B6DAF67FFAE3F83`

<br />
<br />
# Random Fun Fact
<script type="text/javascript">
// r/iamverysmart
    var fun_facts = [
        "I mostly use the alias <i>nims11</i> on the web because rediff suggested it to me in 2008.",
        "FPS games, among many other things, give me motion sickness. Not being able to enjoy half-life is a big regret.",
        "I have broken my head ~5-6 times (I don't remember the exact number because head injury affects memory!).",
        "As a kid, I was successfully convinced by my mom that if I watch the TV from a close distance, the person inside might grab and pull me in, forever!",
        "Unless it is a shitty horror movie, watching a movie is a very bad group activity.",
        "I was a Makoto Shinkai fan before he was cool!",
        "I don't understand the point of LinkedIn. Here is my <a href='https://www.linkedin.com/in/nimesh-ghelani-36aab821' target='_blank'>LinkedIn Profile</a> btw.",
        "My parents always talk to each other in different languages!",
        "My resume is lynx/elinks friendly (<code class='highlighter-rouge'>lynx https://nims11.github.io/resume/resume.html</code>)"
    ];
    document.write(fun_facts[Math.floor(Math.random() * fun_facts.length)]);
</script>
<noscript>You have JS disabled, no fun facts for you</noscript>
