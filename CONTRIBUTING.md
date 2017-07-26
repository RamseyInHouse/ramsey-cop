# Contributing to RamseyCop

## Getting Started
* `git clone git@github.com:lampo/ramsey-cop.git`
* `cd ramsey-cop`
* `bundle`

## Recommended Workflow
* Ensure that any local `.rubocop.yml` overrides are removed
* Pull this gem down
* Set your gemfile to point your local `ramsey_cop` and run `bundle`
* Run `rubocop` in your app
* Review the offenses listed
  * If your code does not adhere to dev standards
    * Update your code
  * Elsif your code does adhere to dev standards || you want to suggest changes
    * Update the default.yml
    * Submit a PR
* Make your PR known to the Rails chapter

## Submitting a PR
* Follow our [workflow](https://github.com/lampo/dev-standards/tree/master/git)
  for branching and pull requests.
* After creating a PR, the CODEOWNERS file will assign your PR to the
  appropriate reviewer.
