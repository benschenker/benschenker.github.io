---
title: Trying Out Hexo
date: 2018-03-25 19:53:17
tags:
- hexo
- blog
---
I decided to play around with static site generators today and found [Hexo](https://hexo.io/). It was pretty easy to set up and configure in just a few hours. 

## Setup

Figuring out how to set it up was surprisingly easy, mostly installing dependencies and filling in the yaml config file.

## Theme

I chose the [Cactus](https://github.com/probberechts/hexo-theme-cactus) theme after some deliberation because it seemed minimal and had a nice dark mode.  To install the theme just clone the theme into the `themes` directory.  However if you change any of the theme configuration options then those changes will not show up in your main git repo (because the theme has its own repo). You can make the theme specific changes in your main config file as documented [here](https://github.com/probberechts/hexo-theme-cactus#configuration).

I may try to customize the theme or make my own because Cactus does not make it easy to customize some of the smaller details, but I'm going vanilla for now.

## Hosting

Hexo claims to make deployment really easy, but I struggled quite a bit making the github pages deployment work through the official method [`hexo-deployer-git`](https://github.com/hexojs/hexo-deployer-git). It does all sorts of "magic" with git that I was not happy with and it was way too destructive and opaque. Instead I found a [simple script](https://gist.github.com/cobyism/4730490#gistcomment-1928142) and [modified it for my use case](https://github.com/benschenker/benschenker.github.io/blob/src/deploy.sh). Now I can commit my source files to the `src` branch and keep a versioned history there, and then run the `deploy.sh` script to generate the static files and push them to the master branch for deployment.


## Conclusion

I'll be further experimenting with this tool, but so far I am quite impressed with how easy it was to set up and the minimal effort required to update the site.
