---
layout: page
title:  "How to install Octave on OS X (Yosemite)"
permalink: 'how-to-install-octave/index.html'
tags: code
---

After twice wasting an hour or so installing Octave for the [Stanford Machine Learning class](https://class.coursera.org/ml-004/class/index), I decided I should jot this down for posterity or anyone else in a similar position. This should give you a working Octave install that plays nice with Gnuplot. (Most of this comes from [Octave's wiki](http://wiki.octave.org/Octave_for_MacOS_X#Simple_Installation_Instructions_3) with help from a StackOverflow post or two.)

Instead of using the Octave installation package as [recommended in the course notes](https://class.coursera.org/ml-004/wiki/view?page=octave-matlab#mac) (this results in the problems we're trying to avoid), I'll be installing Octave via [Homebrew](http://brew.sh/), which fixed a lot of my initial install problems.

If you haven't already, you'll need to install Xcode (free in the Mac App Store) and the Command Line Tools. Once you've installed Xcode, you can install Command Line Tools in Xcode > Preferences > Downloads.

You'll also need to install [XQuartz](https://xquartz.macosforge.org/landing/), so go ahead and download and install that now.

Next, open up a Terminal and do the following:

{% highlight bash %}
# install Homebrew http://brew.sh/ if you don't already have it 
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" 

# tap the science formulae
brew tap homebrew/science

# install some Octave dependencies
# the update/upgrade command below could take a while
brew update && brew upgrade
brew install gfortran

# on Yosemite, you gfortran isn't available so use this instead
brew install gcc

# You may also need to install mactex (see http://tex.stackexchange.com/questions/97183/what-are-the-practical-differences-between-installing-latex-from-mactex-or-macpo)
brew install Caskroom/cask/mactex
export PATH=$PATH:/usr/texbin

# install octave
brew install octave --with-x11

# install fltk for gnuplot
brew install fltk

# install gnuplot (this may be installed as part of octave now)
brew install gnuplot
{% endhighlight %}

Last, you need to edit your .octaverc file to get gnuplot to play nicely with Octave. So, in your home directory, create a new .octaverc file and paste the following:

{% highlight bash %}
# ~/.octaverc
setenv ("GNUTERM", "X11")

# below is optional; changes the prompt to two chevron
# and gets rid of the long Octave x.x.x >> prompt
PS1('❯❯ ')
{% endhighlight %}

I'm pretty sure that should get you up and running, but in case I missed a step, feel free to send me an email or [fix it for me](https://github.com/adampash/adampash.github.io/edit/source/code/octave.markdown).
