# Contributing to RamseyCop

## Getting Started
* `git clone git@github.com:ramseyinhouse/ramsey-cop.git`
* `cd ramsey-cop`
* `bundle`

## Recommended Workflow
* Ensure that any local `.rubocop.yml` overrides are removed
* Pull this gem down
* Set your gemfile to point your local `ramsey_cop` and run `bundle`
* Run `rubocop` in your app
  * Use `rubocop -D` to display cop names in the offense message and help you
    quickly find the [appropriate override](https://github.com/bbatsov/rubocop/blob/master/config/default.yml)
* Review the offenses listed
  * If your code does not adhere to dev standards
    * Update the style in your code only as you make changes. There is no need to make style-only updates.
  * Elsif your code does adhere to dev standards || you want to suggest changes
    * Update the default.yml using a single commit per style change.
    * Submit a PR

## Submitting a PR
* Only add/update one cop per commit.
* Keep the cops defined in `default.yml` in alphabetical order.
* Follow the precedent set by previous commit messages such as:
  * Layout/AccessModifierIndentation: set EnforcedStyle: outdent
  * Style/Alias: set EnforcedStyle: prefer_alias_method
* If it is not a simple setting, feel free to do something like:
  * Style/PercentLiteralDelimiters: set PreferredDelimiters
* After creating a PR, the CODEOWNERS file will assign your PR to the
  appropriate reviewer.
