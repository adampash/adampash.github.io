---
layout: post
title:  "Makin' links change colors"
date:   2013-09-18 18:28:42
tags: coffeescript
---

You'll find this post in your `_posts` directory - edit this post and re-build (or run with the `-w` switch) to see your changes!
To add new posts, simply add a file in the `_posts` directory that follows the convention: YYYY-MM-DD-name-of-post.ext.

Jekyll also offers powerful support for code snippets:

{% highlight coffeescript %}
last_random = null
font_index = 0
$ ->
  $('a').hover(
    (event) ->
      colors = ['#7709F2', '#2AABDF', '#00CC5E', '#ED09FF', '#F97906']
      if typeof last_random == 'string'
        colors.splice(colors.indexOf(last_random), 1)
      random = Math.floor(Math.random() * colors.length)
      $this = $(this)
      $this.css('color', colors[random])
      last_random = colors[random]
    (event) ->
      $this = $(this)
      $this.removeAttr('style')
  )
{% endhighlight %}

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh].

[jekyll-gh]: https://github.com/mojombo/jekyll
[jekyll]:    http://jekyllrb.com
