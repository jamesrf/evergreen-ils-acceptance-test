# Evergreen Cucumber/Capybara tests

## What

This is a set of tests using cucumber and capybara for the Evergreen TPAC

## How to set up
    
### Linux and OS X users

If you are not familiar with Ruby, I recommend you install and configure Ruby Version Manager (rvm) https://rvm.io
This allows you to use the latest versions of Ruby and to avoid mucking with your vendor's preinstalled Ruby

Install the prerequisites by typing from the project root

    bundle install

If you don't want to use the headless mode which requires phantomjs, run this:

    bundle install --without poltergeist


#### cucumber.yml

You will need to copy cucumber.yml.sample to cucumber.yml, this defines a set of profiles for different tests to run.  Please see cucumber documentation for more info on this file.

#### config.yml

This file currently has two options:

    hostname: http://nameofevergreenserver.com
    headless: true

If headless is any non-false value, the poltergeist driver will be used instead of selenium.   This requires phantomjs.
http://phantomjs.org/

## Tests

Tests are in .feature files in the features/ directory.  They are in gherkin format.  For information on how to write
these tests, see the the links below.  It is important to keep the tests generic and avoid writing automation in the tests themselves.

I have used tags in the tests to allow for different data sets.  So far I have defined the following tags:

@testing
    - tests suitable for running in a test environment with Evergreen's included test data (ie: Concerto)

@publiclibrary
    - tests suitable for running on a typical public library's data set

@academiclibrary
    - tests suitable for running at a typical academic library

@any
    - tests suitable for any data set

Tags can be added to an entire feature or an individual scenario.  The default will just run the @testing and @any

## Further Reading

  * http://www.cuke4ninja.com/
  * http://cukes.info
  * http://dannorth.net/introducing-bdd/
  * http://dannorth.net/whats-in-a-story/

