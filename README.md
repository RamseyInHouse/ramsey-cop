# RamseyCop

[![Gem Version](https://badge.fury.io/rb/ramsey_cop.svg)](https://badge.fury.io/rb/ramsey_cop)

Inspired by https://blog.percy.io/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8

Ramsey shared style configs.

## Why

https://www.sandimetz.com/blog/2017/6/1/why-we-argue-style

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "ramsey_cop"
end
```

And then run:

```bash
$ bundle install
```

If you're in a Rails app, you can now run:
```bash
$ rails generate ramsey_cop
```

If you're not in a Rails app, you will need to create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  ramsey_cop:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. RamseyCop will include a specific version of `rubocop` that is shared across all projects.

## Documentation

* [Introducing RamseyCop to an existing repository](/documentation/existing-repositories.md)
* [RamseyCop linting in Vim with ALE](/documentation/vim-tips.md)
