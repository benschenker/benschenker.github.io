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

One of Hexo's great features is easy deployment. I have used github pages to host my site in the past because of how simple it is to work with and Hexo makes this even easier. A tricky bit was using the [`hexo-deployer-git`](https://github.com/hexojs/hexo-deployer-git) package to deploy my fully generated static site to one branch (`master`) and the source files to another (`src`).  The below configuration worked for me (NOTE: This is slightly different than the [documentation suggests](https://github.com/hexojs/hexo-deployer-git#options) because I ran into an issue when including hidden files):
```yaml
deploy:
- type: git
  repo: git@github.com:benschenker/benschenker.github.io.git
  branch: master
- type: git
  repo: git@github.com:benschenker/benschenker.github.io.git
  branch: src
  extend_dirs: /
  ignore_hidden: true
  ignore_pattern:
      public: .
```

## Conclusion

I'll be further experimenting with this tool, but so far I am quite impressed with how easy it was to set up and the minimal effort required to update the site.
