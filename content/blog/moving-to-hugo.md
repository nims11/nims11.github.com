---
title: "Moving to Hugo"
date: 2020-01-01T04:54:08Z
---

I have successfully migrated this website from Jekyll to Hugo. While jekyll
served me well, the ruby dependency management drove me crazy at various
occasions. I had spare time and wanted to give hugo a try.

# What I like about Hugo

- Clean dependencies.
- It can do a lot more things off the bat compared to jekyll. I am very excited
    to incorporate data templates into this site.
- Very fast.


# What I dislike about Hugo

- Being habituated with Liquid templating, I am still not confident of my go
    templating skills.
- I am not a massive fan of enforcing too much when it comes to directory/file names and structures.
- It doesn't support the same flavour of markdown as Jekyll.
- The docs are extensive but the tutorials are geared towards people creating a
    site from scratch. I just wanted to migrate an existing site with my custom
    theme, and it was overwhelming to find that information in the docs as a
    beginner. There is a functionality which automatically migrates an existing
    jekyll site to hugo, but that barely saved 10% of my total work. Here is the
    repo for referance: [Hugo
    version](https://github.com/nims11/nims11.github.com) and [Jekyll
    version](https://github.com/nims11/nims11.github.com/tree/master-old).


# A more unixy static site generator

Most static site frameworks are tied to a set of design decisions
pertaining to an idealogy about how static site generation should be done.  One
of the common goals is to separate the site generation logic from the content.
However, often I find myself using templating logic in my markdown files, adding
some form of generation logic into my content. Honestly, this violation doesn't
bother me and I wish more frameworks let me have more control over embedding
generation logic inside my content.

When I think about the functionalities I expect from a static site
generator:

- Templates and multi-level inheritance.
- Meta variables and incorporating them into templates (such as title, date,
    content, etc).
- Support for arbitrary content type (markdown, rst, json, etc)
- Freedom of programming language when it comes to defining logic within content
    or during static site generation.

I want to try building a minimal static site generator which achieves the above,
with maximal reliance on pluggable external tools. The design and PoC I have are
very hacky and inefficient. That's more of a reason I want to see through this.
