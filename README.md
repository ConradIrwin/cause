This is a back-port of Ruby 2.1.0's [`Exception#cause`](http://www.ruby-doc.org/core-2.1.0/Exception.html#method-i-cause) to older versions of Ruby.

Installation
------------

Add `gem 'cause'` to your `Gemfile`, then run `bundle install`. If you're not
using bundler, then just `gem install cause`.

Usage
-----

Just continue programming as normal. When you rescue from exceptions they'll
have a third property, cause, in addition to backtrace and message. The cause
is the exception object that was being handled when the error was raised.

While this is not directly useful in normal programming, it's very useful for
debugging. Exception trackers like [Bugsnag](https://bugsnag.com/) can then pick up
the cause of the exception to help you find out what went wrong.

Limitations
-----------

At the moment you cannot set the cause yourself.  Overriding `raise` is hairy
business and I wrote this gem late at night, but with sufficient care it's
probably doable.

Meta-fu
-------

This gem is Copyright under the MIT licence. See LICENCE.MIT for details.

Contributions and bug-reports are welcome.
