# Description
This repository contains code that performs simple UI automation tests. The tests are utilizing Selenium WebDriver through Capybara, and are structured with RSpec.


## Requirements

* Ruby. Install it with [rbenv](https://github.com/rbenv/rbenv) or
  [rvm](https://rvm.io/). Check [.ruby-version](.ruby-version) for the required
  version.
*  Selenium WebDriver (uses `:selenium_chrome_headless` by default)
    - needs [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/downloads) pre-installed


## Setup

Clone the  repository to your machine:

```sh
$ git clone https://github.com/mpangarova/automation_mission.git
```

## Install dependencies

```sh
$ automation_mission_dir ~> gem install bundler
$ automation_mission_dir ~> bundle install
```

## Execute tests

```sh
$ automation_mission_dir ~> rspec
```

### Additional

`/doc` contains API documentation example.

* [account](https://github.com/mpangarova/automation_mission/blob/master/doc/account.md)

* [transaction history](https://github.com/mpangarova/automation_mission/blob/master/doc/transaction_history.md)


`/bug_report` contains bug description example.

* [Bug description](https://github.com/mpangarova/automation_mission/blob/master/bug_report/bug_description.md)