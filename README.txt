= spiral

* http://github.com/nanki/spiral

== DESCRIPTION:

CUI-based CHM viewer.

== FEATURES/PROBLEMS:

* Search entries in index, contents, fulltext index.
* Asynchronous searching.
* Background HTML rendering.

== SYNOPSIS:

  $ spiral ruby_on_rails.chm

== REQUIREMENTS:

* Ruby 1.8.7 / Ruby 1.9.x
* ffi-chm >= 0.3.0
* ansi (gem)
* w3m
* io-console (http://www.rubyist.net/~nobu/ruby/io-console-0.2.gem) or Ruby 1.9.3

== INSTALL:

* gem install spiral

== KNOWN ISSUES:

* w3m offten fails on a SEGV on Mac OS X 10.7 Lion
* unkown error related with Thread#kill on Ruby 1.9.2

== Default key binding

  <C-w>
    delete a word.

  <C-n>
    next entry

  <C-p>
    previous entry

  <C-c>
    exit

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2011 NANKI Haruo

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
