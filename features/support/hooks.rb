
configfile = YAML.load( File.open('config.yml'))

Capybara.default_driver = :selenium

if configfile['headless']
  require 'capybara/poltergeist'  
  Capybara.default_driver = :poltergeist
end

if configfile['trust-ssl']
  Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile.assume_untrusted_certificate_issuer = false
    Capybara::Selenium::Driver.new(app, :profile => profile)
  end
end


Capybara.app_host = configfile['hostname']
