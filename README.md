# README

Hello and welcome to the Mystic Ridge Music Shop application.  This application allows users the ability to :
      -sign in, signout, signup, signup with omniauthable means (github and amazon accounts)
      -create and edit contact information for the accounts
      -create shops that allow users the ability to post items (musical instruments, gadgets, etc)
      -state when an item has had its last tuneup along with what technician performed the tuneup
      -and much more...

I have added the following gem files for this project.  
        gem 'devise'  #performs the major authentication work in this app
        gem 'dotenv-rails'  #allows us to setup a file to store our client and secret keys for omniauth without sending to github
        gem 'omniauth'  #gem to allow omniauth (may already exist in devise)
        gem 'omniauth-github'
        gem 'omniauth-amazon'
These gems are also nice to have on hand as well:
        gem "rspec-rails"
              #rspec-rails is a testing framework for Rails 3.x, 4.x and 5.0.
        gem "launchy"
              #Launchy is helper class for launching cross-platform applications in a fire and forget manner.
              #There are application concepts (browser, email client, etc) that are common across all platforms, and they may be launched differently on each platform. Launchy is here to make a common approach to launching external application from within ruby programs.
        gem "rack_session_access"
              #RackSessionAccess provides rack middleware for 'rack.session' environment management.
        gem "better_errors"
              #Better Errors replaces the standard Rails error page with a much better and more useful error page. It is also usable outside of Rails in any Rack app as Rack middleware.
              #aka the error screen in browser when running server
        gem "binding_of_caller"
              #The binding_of_caller gem provides the Binding#of_caller method.
              #Using binding_of_caller we can grab bindings from higher up the call stack and evaluate code in that context. Allows access to bindings arbitrarily far up the call stack, not limited to just the immediate caller.
              #aka binding.pry
        gem "pry"
              #Pry is a powerful alternative to the standard IRB shell for Ruby. It is written from scratch to provide a number of advanced features
        gem "factory_bot_rails"
              #factory_bot is a fixtures replacement with a straightforward definition syntax, support for multiple build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects), and support for multiple factories for the same class (user, admin_user, and so on), including factory inheritance.
        gem "simplecov"
              #SimpleCov is a code coverage analysis tool for Ruby. It uses Ruby's built-in Coverage library to gather code coverage data, but makes processing its results much easier by providing a clean API to filter, group, merge, format, and display those results, giving you a complete code coverage suite that can be set up with just a couple lines of code.
              #In most cases, you'll want overall coverage results for your projects, including all types of tests, Cucumber features, etc. SimpleCov automatically takes care of this by caching and merging results when generating reports, so your report actually includes coverage across your test suites and thereby gives you a better picture of blank spots.
              #The official formatter of SimpleCov is packaged as a separate gem called simplecov-html, but will be installed and configured automatically when you launch SimpleCov. If you're curious, you can find it on GitHub, too.
        gem "database_cleaner"
              #Database Cleaner is a set of strategies for cleaning your database in Ruby.
              #The original use case was to ensure a clean state during tests. Each strategy is a small amount of code but is code that is usually needed in any ruby app that is testing with a database.
        gem "guard-rspec", require: false
              #Guard::RSpec allows to automatically & intelligently launch specs when files are modified.

To get started in the application, clone the repo to your local terminal. Then.......
  1) Install the gems via "bundle install"
  2) Run the Database migration via "rake db:migrate"
  3) Run the seed file and populate the databse with information via "rake db:seed"
  4) Start a local server to test out the application via "rails s"

Enjoy!
