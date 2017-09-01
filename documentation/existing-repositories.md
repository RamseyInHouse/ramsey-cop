# Introducing Ramsey Cop to an existing repository

Here are a few tips for introducing RamseyCop to an existing project

* Delete any existing `.rubocop.yml` config files
* Run `rails generate ramsey_cop`
  * Currently this will just copy `default.yml` to `.rubocop.yml`. Once this RamseyCop is available via RubyGems, we can go back to inheriting from `default.yml` instead.
## Getting a feel for the current state of your code.
* Run `bundle exec rubocop -f o` to get a count of violations per cop.
* Run `bundle exec rubocop -f w` to see your worst offending files.
* Run `bundle exec rubocop -h` to see the other handy options.

## Letting rubocop fix what it can
Some of the cops are auto-correctable. This will make all of those changes. Generally it is not advised to make style-only changes, as your time is probably better spent adding some new feature. However, this only requires a review and may be worth the effort. If you're happy with the auto-correct changes, you could go ahead and commit that. If there are changes you are not happy with, then you can put in a PR for this gem to change the cops.

* Run `bundle exec rubocop --auto-correct`

## Your first PR after including RamseyCop
Hopefully you have CodeClimate running against your repo and blocking PRs when it sees offenses. This is good, and it means your first PR will be blocked for all of your offenses. You may want to get a repo admin to merge your PR anyway. This will allow you to then only focus on offenses as code is changed/added.

## Further notes
* Be sure to either use `bundle exec rubocop` OR run `bundle binstubs rubocop` before executing `rubocop` to make sure you are getting the version of `rubocop` specified in `RamseyCop`
