VolLog
======

Homespun [*ramlog*](http://www.tremende.com/ramlog) based on
[this](https://www.debian-administration.org/article/661/A_transient_/var/log).

Background
----------

I want to maximise the lifespan of the microSD in my RPi and *ramlog*
was meant to be a quick first step towards reducing the number of
writes. Unfortunately -- for some reason I've been unable to diagnose
-- ramlog isn't working for me.

It would be worth figuring out why and fixing it, but 

  - I'm impatient to get a solution for this.
  - The principle is quite simple.
  - I need to do something similar for data *anyway*.

The intent is to get something I'm happy with and fork this to extend
the concept to data and/or arbitrary directories.
