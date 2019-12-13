pry-coolline
===========

(C) John Mair (banisterfiend) 2012

_live syntax-highlighting for the Pry REPL_

The `pry-coolline` plugin provides live syntax highlighting for the
[Pry](http://pry.github.com) REPL for Ruby 1.9.2+ (MRI).

It makes use of the [coolline](https://github.com/mon-ouie/coolline)
gem and the `io/console` library.

* Install the [gem](https://rubygems.org/gems/pry-coolline): `gem install pry-coolline`
* See the [source code](http://github.com/pry/pry-coolline)


**How to use:**

After installing `pry-coolline` just start Pry as normal, the coolline
plugin will be detected and used automatically.

<center>
![Alt text](https://dl.dropboxusercontent.com/u/26521875/pics/coolline.png)

Features
--------

***Automatic Ruby syntax highlighting***

This is the main feature. It is enabled by default, as long as
`Pry.config.color` is true.

***Matching of opening and closing parentheses and brackets***

`pry-coolline` allows to match parentheses and brackets automatically. This
behavior can be configured and disabled altogether:

    # Whether or not to enable this feature. Defaults to true.
    Pry.config.coolline_paren_matching = false

    # Change the color code inserted when paprens are (mis)matched.
    Pry.config.coolline_matched_paren    = "\e[42m"
    Pry.config.coolline_mismatched_paren = "\e[41m"

    # In case you can't remember ANSI color codes ;)
    require 'term/ansicolor'
    Pry.config.coolline_matched_paren    = Term::ANSIColor.on_green
    Pry.config.coolline_mismatched_paren = Term::ANSIColor.on_red

Limitations
-----------

* No Ruby < 1.9.2 support.
* MRI only.
* Poor support for long lines.
* Pry's automatic indent is not yet compatible.
* Occasionally has some quirks (hopefully ironed out in future).

Contact
-------

Problems or questions contact me at [github](http://github.com/banister)


License
-------

(The MIT License)

Copyright (c) 2012 John Mair (banisterfiend)

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
