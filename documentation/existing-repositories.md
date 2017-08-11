# Introducing Ramsey Cop to an existing repository

Here are a few tips for introducing RamseyCop to an existing project

* Delete any existing `.rubocop.yml` config files
* Create a new `.rubocop.yml` that contains only
  * You can also `rails generate ramsey_cop`

```yaml
inherit_gem:
  ramsey_cop:
    - default.yml
```

* Run `bundle exec rubocop --autogen-config`
  * This will create a `.rubocop_todo.yml` that contains all existing offenses identified by the `RamseyCop` config. This will skip these offenses in the future so that you can just focus on new changes/new offenses.
* Add `.rubocop_todo.yml` to your `.rubocop.yml` so that will now look like

```yaml
inherit_gem:
  ramsey_cop:
    - default.yml

inherit_from:
  - .rubocop_todo.yml
```

* Be sure to either use `bundle exec rubocop` OR run `bundle binstubs rubocop` before executing `rubocop` to make sure you are getting the version of `rubocop` specified in `RamseyCop`
