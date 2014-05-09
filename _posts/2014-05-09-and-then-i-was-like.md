---
layout:     post
title:      And then I was like ...
published:  true
---

![And then I was like ...](/assets/atiwl.png)

Three months ago, [Ellen](http://ellenflaherty.com/) and I soft-launched [And then I was like](https://andtheniwaslike.co/), a web app that lets you make animated gifs with your webcam. Our basic goals were to:

1. Make something fun.
2. Try our hand at working together on a project.
3. Work with some interesting new technologies.
4. Seed the world with more than the same warmed-over gallery of gifs that make the rounds on tumblr, reframing the gif as a more participatory medium.

I learned a lot from building the site, and then quite a bit more after launching it. This week I took what I learned from how people were using it, did a lot of this:

![fast typing](https://s3.amazonaws.com/atiwl/gifs%2F1399482729819-nthgt9wbm1oo5hfr-e50db1cc597e6436ed87d2c31eb52571%2Fblob.gif)

...and released an update to And then I was like focused on better/faster gif-making.

Since it launched, I've tried four or five different methods for optimizing how the gifs are made and saved, focusing primarily on a workflow that creates gifs as quickly as possible. I'm now using a great JavaScript library called [gif.js](http://jnordberg.github.io/gif.js/) to convert the individual frames to a gif on the client side (using web workers), and as a result the process of converting and saving a gif is about ten times faster than at launch (from about 15-20 seconds to 2 seconds or less).

I've also streamlined the process from visiting the site to making a gif. You're never prompted to sign in (though you can still log in and associate your gifs with an account if you want to).

When you're making a gif &mdash; in addition to changing the way gifs loop &mdash; you can now adjust playback speed (see speedy-typing gif above).

Last, if you've got an Android phone, you can make gifs in Chrome for Android using your phone's camera.

If you're interested in giving it a try, it's just one click away (no login required). If you've got feedback, please [don't hesitate to share](mailto:hi@andtheniwaslike.co?subject=You%20asked%20for%20it).

<h2 style="text-align: center"><a href="https://andtheniwaslike.co/gifs/new">I want to make a gif!</a></h2>
