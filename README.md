# Opscode: An Infrastructure Code Workflow Tool

[![Gem Version](https://badge.fury.io/rb/opscode.png)](http://badge.fury.io/rb/opscode)
[![Build Status](https://travis-ci.org/fnichol/opscode.svg?branch=master)](https://travis-ci.org/fnichol/opscode)
[![Code Climate](https://codeclimate.com/github/fnichol/opscode.png)](https://codeclimate.com/github/fnichol/opscode)
[![Dependency Status](https://gemnasium.com/fnichol/opscode.svg)](https://gemnasium.com/fnichol/opscode)

Unify your source code management tools into a single development/release workflow that can be used by your entire team. Opscode is a minimal, zero dependency Ruby library that screams simplicity. Currently most major SCM tools are supported, including:

* [Git](http://git-scm.com/)
* [Mercurial](http://mercurial.selenic.com/)
* [Darcs](http://darcs.net/)
* [Bazaar](http://bazaar.canonical.com/)
* [Fossil](http://www.fossil-scm.org/index.html/doc/tip/www/index.wiki)
* [Subversion](https://issues.apache.org/jira/plugins/servlet/mobile#issue/INFRA-7524)
* [CVS](http://www.nongnu.org/cvs/)

## Installation

Add this line to your application's Gemfile:

    gem 'opscode'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opscode

## Usage

After installation, you will have an `opscode` command to run your various workflows.

To check the installed version:

    $ opscode version

Other commands depend on your chosen SCM tool. For example, using the default Git implementation:

    $ opscode checkout https://github.com/opscode/chef.git

To use another SCM tool you will need to export an environment variable `OPSCODE_SCM`. For example, to use Subversion:

    $ export OPSCODE_SCM=svn
    $ opscode checkout https://github.com/opscode/chef

More detailed usage depends on your SCM tool, but most will provide more information with:

    $ opscode help

## Development

* Source hosted at [GitHub][repo]
* Report issues/questions/feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make. For
example:

1. Fork the repo
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## <a name="authors"></a> Authors

Created and maintained by [Fletcher Nichol][fnichol] (<fnichol@nichol.ca>)

## <a name="license"></a> License

Apache 2.0 (see [LICENSE.txt][license])

## FAQ

* **"How would I start using this with my team?"**
  Ummmmm... are you sure you want to?
* **"Is this legit?"**
  Ummmmm... does it look legit?
* **"What features are on the roadmap?"**
  Ummmmm... does this project need a roadmap?


[license]:      https://github.com/fnichol/opscode/blob/master/LICENSE.txt
[fnichol]:      https://github.com/fnichol
[repo]:         https://github.com/fnichol/opscode
[issues]:       https://github.com/fnichol/opscode/issues
[contributors]: https://github.com/fnichol/opscode/contributors
