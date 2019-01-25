require 'spec_helper'
require 'pry'

require 'rspec'
require 'capybara/rspec'

Capybara.default_driver = :selenium_chrome_headless
Capybara.default_max_wait_time = 10