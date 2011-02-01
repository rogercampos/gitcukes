Gitcukes
========

Gitcukes is a cucumber feature editor, integrated with your Git repo with the
help of [Grit](https://github.com/mojombo/grit).

It provides an user friendly interface to play with your cukes, helping you to
keep them in sync with your customer! (or, at least, it will be in some future)


Install
=======

Actually gitcukes has almost no configuration options, hope to solve this
sooner and make it usefull in many other scenarios.
Gitcukes runs as an standalone rails application, which watches for a Git
repository you have somewhere in your filesystem. It is mandatory that you
have this git repo cloned into your machine with fs write access, this is how Grit
works (sorry Heroku users).

It will look into the /features directory inside that repo, and each feature
file you have in there (ending with .feature) will be available to you in
gitcukes.


Setup
-----
All you have to do is edit the config/settings.yml file and put there a path
to some git repo. Copy it from the example, as it is gitignored for
security reasons.

