---
layout: post
title:  "Trying Mercurial"
date:   2023-12-06 08:04 +0100
categories: programming
tags: english
---
As a student – let's say it's around the year 2013 – I mostly used git as the
favoured version control system because it was the de facto standard. There
were folks using subversion, but that seemed to be very much a holdout from the
before times, and was on its way out.

Despite this, I was never happy with git. The frequency with which you have to
do violence to your repository, the fact that you use a `--hard` flag and weird
notations like `HEAD~` never sat well with me.

My first contact with mercurial was for a university project where the prof
encouraged us to try it. These were the better times where you could just have a
bitbucket account and mercurial hosting was integrated pretty well. For the very
limited project we did, there wasn't much of a difference to git, and while I
liked mercurial a lot more, I never was committed enough to change to it as my
main version control.

When I started working at Google, I initially worked with their Perforce based
version control system, but pretty sure switched to Fig, which is a mercurial
based interface for it. I fell in love with the ease of use compared to both git
and perforce, and wanted for some time to try out mercurial for private projects
as well.

First dose of reality: Mercurial in its default configuration doesn't do much.
You need to configure all kinds of extension to have a remotely modern
experience with it:

```
[extensions]
convert=
histedit=
rebase=
split=
amend=
graphlog=
```

And there is probably some I'm missing here, since for example I still didn't
have a good side-by-side merge view with this configuration.

Then, picking a host for my projects wasn't as trivial a just setting up a
Github account. I had the vague memory that Gitlab supported mercurial, but in
fact it's the fork [Heptapod](https://heptapod.net/) which does so. There are
some alternative platforms like [CodeBase](https://www.codebasehq.com/), but all
have in common that the minimum amount you pay for an account is upwards of 10
USD per month if you want to invite some friends to the repository.

In direct comparison, I liked CodeBase way more than Heptapod, but both are
somewhat lacking:

CodeBase has a web interface which looks somewhat dated and is clearly aimed at
organisations rather than individual users: As a default screen, you get an org
overview, and you need to navigate through menus to get to your repository. In
general, it's easy to access project management flows, but harder to look at
code. The integrated search doesn't even index your code files!

Heptapod is a fork of Gitlab specifically aimed at mercurial hosting, and the
polished Gitlab UI is certainly a point in its favour. They offer a hosted
instance via some external cloud platform – so you need to create an account
with the cloud platform first, create an organization within that account, and
then use those credentials to log into your Heptapod repository. There, you
rename your user account from some generated id to something human-readable
because apparently it is not possible to generate a reasonable name from just my
user credentials. For billing details on that cloud platform, apparently it's
very hard to set your only payment details as the default payment details, so
you need to do that manually. As a side note, Heptapod uses a billing model per
"active user" per month, so if you have some friends who occasionally have a
glance at your projects you don't need to pay for them (nice), but once they
create an issue in the issue tracker you're supposed to dish out 7 dollars for
that (not so nice).

Getting started in Heptapod, all UI elements read "Gitlab", which inspires only
limited confidence into the maturity of this service. At some point I tried to
upload a multi-head branch (completely fine in mercurial) and the server refused
it. Presumably because in git you cannot do such a thing. I tried to migrate my
setup to something branch-based, but since the change I wanted to move to the
side branch was already published on the server, couldn't get to a setup I was
actually allowed to upload, completely breaking my setup and causing me to
abandon Heptapod.

So overall, do I want to pay double digits per month for old and
difficult-to-navigate UI, or an early-beta experience on nice UI, just so that I
can profit from not having to use `--hard` and can enjoy the fact that splitting
a file on a refactor is tracked as a file branch, instead of just a new separate
file?

The answer is no, so my projects are migrated back to git and I sadly need to
conclude that while mercurial itself is great, neither tooling nor ecosystem are
currently in a state that it would sense for me to use it.
