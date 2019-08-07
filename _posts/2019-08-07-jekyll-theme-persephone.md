---
title: Jekyll Theme Persephone
date: 2019-08-07T07:08:04.260Z
---
There used to be a question: Why programmers prefer minimal design? The answer is that because they can only do minimal "design".

Then here comes this minimal Jekyll theme 👏!

I know nothing about design.  But I want my blog to be clean, minimal, and different from others. So I did this.

I copied the idea of design from a lot of places:

* The color schemer from Bootstrap4.
* [RevealSlideshow](https://tympanus.net/Development/RevealSlideshow/) from Codrops.
* [Perrera.com](http://perrera.com/)
* [Gitbook](https://legacy.gitbook.com/)
* [Image Reveal Hover Effects](https://tympanus.net/Development/ImageRevealHover/) from Codrops.
* [Fuck I Wish I Knew That](https://fuckiwishiknewth.at/)

Finally, I pushed it as a Ruby Gem and made it open source as usual.

There are eight layouts in this theme. 

| ![home layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/home.png) | ![blog layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/blog.png)       | ![post layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/post.png)     |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `layout: home` [Demo](https://en.erl.im/blog/)                                                      | `layout: blog` [Demo](https://erl.im/blog)                                                                | `layout: post` [Demo](https://erl.im/blog/dream)                                                        |
| ![page layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/page.png) | ![archive layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/archive.png) | ![slides layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/slides.png) |
| `layout: page` [Demo](https://erl.im/about)                                                         | `layout: archive` [Demo](https://erl.im/archive)                                                          | `layout: slides` [Demo](https://erl.im)                                                                 |
| ![book layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/book.png) | ![chapter layout](https://github.com/erlzhang/jekyll-theme-persephone/raw/master/screenshots/chapter.png) |                                                                                                         |
| `layout: book` [Demo](https://erl.im/corner)                                                        | `layout: chapter` [Demo](https://erl.im/corner/1)                                                         |                                                                                                         |

You can find the full demo from my [Chinese blog](https://erl.im). The introduction and usages can be found [here](https://github.com/erlzhang/jekyll-theme-persephone/blob/master/docs/layouts.md) (some of the layouts can't be used with a [jekyll-books](https://github.com/erlzhang/jekyll-theme-persephone/blob/master/docs/books.md) plugin).

[Here](https://github.com/erlzhang/jekyll-theme-persephone/blob/master/_config.yml) is a fully functional setting of the theme in `_config`.

Code highlight, latex, and mermaid are all supported. But you should enable it manually in `_config.yml`.

Disqus is well supported for post layout.  You can also use Staticman as a static comments provider. Find more from [here](https://github.com/erlzhang/jekyll-theme-persephone/blob/master/docs/comments.md).

Just [post an issue](https://github.com/erlzhang/jekyll-theme-persephone/issues) or [contact me with email](mailto:zhangshiyu1992@hotmail.com) if you have any more questions. Bug reports and feature recommendations are all kindly welcomed.
