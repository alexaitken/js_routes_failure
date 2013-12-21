Konacha.configure do |config|
  require 'capybara/poltergeist'

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, timeout: 200)
  end

  config.driver = :poltergeist
  config.spec_dir = "test/javascripts"
  config.spec_matcher = /_spec\.|_test\./
end if defined?(Konacha)
