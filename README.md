VolLog
======

Homespun [*ramlog*](http://www.tremende.com/ramlog) based on
[this](https://www.debian-administration.org/article/661/A_transient_/var/log).

There's some adaptation of the script linked above to work on the
following (RPi 2 Model B):

  Operating System: Raspbian GNU/Linux 8 (jessie)
            Kernel: Linux 4.1.13-v7+
      Architecture: arm

Background
----------

I want to maximise the lifespan of the microSD in my RPi and *ramlog*
was meant to be a quick first step towards reducing the number of
writes. Unfortunately -- for some reason I've been unable to diagnose
-- ramlog isn't working for me\*.

It would be worth figuring out why and fixing it, but 

  - I'm impatient to get a solution for this.
  - The principle is quite simple.
  - I need to do something similar for data *anyway*.

The intent is to get something I'm happy with and fork this to extend
the concept to data and/or arbitrary directories.

\* The theory after da42817 is that ramlog also needs a
`--make-private` mount option somewhere now.


Install
-------

	./install.sh


Configuration
-------

There is an override (30M) for the filesystem size (16M) in
`/etc/default/vollog` as I found this was almost full immediately.
Change this at will...

