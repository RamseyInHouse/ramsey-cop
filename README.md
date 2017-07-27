# RamseyCop

Inspired by https://blog.percy.io/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8

Ramsey shared style configs.

## Why

https://www.sandimetz.com/blog/2017/6/1/why-we-argue-style

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem "ramsey_cop", source: "https://{GEMFURY_TOKEN}@gem.fury.io/lampogroup/"
end
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  ramsey_cop:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependences. RamseyCop will include a specific version of `rubocop` that is shared across all projects.
