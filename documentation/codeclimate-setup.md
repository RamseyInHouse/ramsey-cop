# Integrating RamseyCop with CodeClimate

See https://codeclimate.com/changelog/582495c32c33066f1b00191d/ for context.

In your `.codeclimate.yml` file, you will need to add:
```yml
prepare:
  fetch:
  - url: "https://raw.githubusercontent.com/RamseyInHouse/ramsey-cop/master/default.yml"
    path: ".rubocop.yml"
```

This will stomp your `.rubocop.yml` file, but only for the purpose of running RamseyCop against your PR in GitHub. This is necessary because CodeClimate will not install any gems.
