# Evergreen Cucumber/Capybara tests

## What

This is a set of tests using cucumber and capybara for the Evergreen TPAC

## Why

Evergreen needs some tests and QA.  While these tests don't cover everything, they 
are a start and a generally focused on front-end acceptance testing.  This is most
useful for libraries/systems/consortia hosting Evergreen ensuring changes are working.

I chose Cucumber because it is a DSL which allows a business-readable language.  This means
libarians, documentators and others who don't program but are probably systems thinkers can 
still contribute to this project.

I chose Capybara because it is easy to use and a reasonably mature project.  Cucumber works
in many programming languages, so tests could be written to use the same Cucumber feature files
in any language that has a Cucumber library.

## How
    
### Linux and OS X users

If you are not familiar with Ruby, I recommend you install and configure Ruby Version Manager (rvm) https://rvm.io
This allows you to use the latest versions of Ruby and to avoid mucking with your vendor's preinstalled Ruby

Install the prerequisites by typing from the project root
    bundle install

Again from the project root, type 'cucumber' to run the tests


### Windows Users

This is not a simple process, you will probably have problems.

You will need to install Ruby probably via Rubyinstaller (rubyinstaller.org).

The ruby json gem is required, which requires you install Rubyinstaller's DevKit.  Instructions are here: https://github.com/oneclick/rubyinstaller/wiki/development-kit

For colorful output you may also want ANSICON: http://adoxa.3eeweb.com/ansicon/
 
Once you have that, open your Ruby terminal install the dependencies as in  run as above.
 


