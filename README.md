<h1 align="center">
Slugify :snail:
</h1>
<h4 align="center">A simple and dependency free slugifier for your CLI. POSIX compatible.</h4>
<p align="center">
<i>Work on macOS and GNU/Linux :rocket:</i>
</br>
<i>TL;DR:</i> <code>input | slugify > output</code>
</p>
<p align="center">
<img src="https://badgen.net/badge//cli/blue?icon=terminal" alt="Terminal badge"/>
<img src="https://badgen.net/travis/Mayeu/slugify?icon=travis" alt="Travis Pipeline status badge"/>
<a href="https://gitlab.com/Mayeu/slugify/commits/master"><img alt="pipeline status" src="https://gitlab.com/Mayeu/slugify/badges/master/pipeline.svg" /></a>
<img src="https://badgen.net/github/release/Mayeu/slugify?icon=github" alt="GitHub release badge"/>
</p>

👉 This is a really simple (*aka "featureless"*) tool to generate slugs :snail:
directly from your command line. It does not have any option by design and work
best by piping one line at a time to it:

```
$ echo "I'm no slug 🐌." | slugify
i-m-no-slug
```

It does not aim to be perfect since the goal is to be able to use it in a *drop
& run* fashion (aka *`curl`ing & praying* :pray:).

## :computer: Install

If you are the adventurous kind, you can simply `curl` & install the script
directly from the web 🌐. Here is a one-liner that may break your system:
```
$ curl https://slugify.now.sh > slugify && chmod +x slugify && sudo mv slugify /usr/local/bin/
```
(Yes, this will ask for your password, as stated before this may break your
system. Paste with care.)

Otherwise, just clone this repository somewhere and manually copy the `slugify`
script anywhere your `$PATH` point to (my favorite place is my `~/bin` folder):
```
$ git clone https://github.com/Mayeu/slugify
$ cd slugify
$ cp slugify ~/bin/
```

## :hammer: How to use

The best way to use this tool is to directly pipe a line to it:
```
$ echo 'Slug me bébé!!1!' | slugify
slug-me-b-b-1
```

But you can also pass the line to slug as an argument. Be sure to quote your
text!
```
$ slugify "I'm no slug."
i-m-no-slug
```

Finally, you can see the minimal help by calling the script without any
argument:
```
$ slugify
Usage: slugify text
       echo text | slugify
```

## :100: Testing

To run the test, you need [bats(1)](https://github.com/sstephenson/bats)
installed. Then you can simply run:
```
$ make test
```

Right now, the tests are not actually running in a minimal POSIX compliant
shell but in bash 😒. This is a work in progress 🚧, you can give a hand if you
have one to spare.

The tests are automatically run on each commits (including Pull Requests) with
the help of [Travis CI](https://travis-ci.org/), and
[GitLab](https://gitlab.com/Mayeu/slugify/pipelines). The following OS are
tested:

* Travis CI:
  * Ubuntu 14.04
  * macOS
* GitLab:
  * Alpine 3.5, 3.6, 3.7, 3.8, edge
  * Archlinux
  * Centos 6, 7
  * Debian oldstable, stable, testing, unstable
  * Fedora 27, 28, 29, Rawhide
  * Ubuntu 14.04 LTS, 16.04 LTS, 18.04 LTS, 18.10

Right now there is no automated test for our BSD friends, I would love to setup
some, poke me if you know how I could do that on the cheap (i.e.: *free as in
:beer:*).

## :arrows_counterclockwise: Versionning

This project uses [SemVer](https://semver.org/). The public API is defined as
the possible interaction with the tool via the shell.

## :wave: Authors

* Mayeu - Initial work - [Personal website](https://mayeu.me)

## :memo: License

This software is distributed under the GPLv3 license. Please check the
[LICENSE.md file](LICENSE.md).

## :snail: Embrace the slug
<h1 align="center">
<img src="https://github.com/Mayeu/slugify/blob/master/doc/img/brain-slug.jpeg" alt="Propaganda poster for the brain slug federation. Picturing Fry from the Futurama show being controlled by a brain slug">
</h1>
