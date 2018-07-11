# README

APPLICATION DESCRIPTION

      Hello and welcome to the Mystic Ridge Music Shop application.  This application is built on ruby on rails and allows users the ability to :
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

INSTALLATION GUIDE
      To get started in the application, fork and clone the repo to your local terminal. Then.......

        1) Install the gems via "bundle install"

        2) Run the Database migration via "rake db:migrate"

        3) Run the seed file and populate the databse with information via "rake db:seed"
        
        4) If you would like to add omniauth functionality:
              a) under the root directory create a file named ".env"
              b) setup your client key and secret_key in the .env file like the following example for github and amazon omniauth (#note you will have to setup applications with providers that have omniauth capabilities):

                    GITHUB_KEY=_____place_key_here__________
                    GITHUB_SECRET=_____place_secret_here__________

                    AMAZON_KEY=_____place_key_here__________
                    AMAZON_SECRET=_____place_secret_here__________

        5) Start a local server to test out the application via "rails s"

HOW TO CONTRIBUTE
      If you have read this far than hopefully you want to learn more about the app and how you can contribute to making it better.

      Submitting changes
      Please send a GitHub Pull Request to https://github.com/byojelly/mrm/compare?expand=1 with a clear list of what you've done. Please follow our coding conventions (below) and make sure all of your commits are atomic (one feature per commit).

      Always write a clear log message for your commits. One-line messages are fine for small changes, but bigger changes should look like this:

                            $ git commit -m "A brief summary of the commit
                            >
                            > A paragraph describing what changed and its impact."


      Coding conventions
            ~ Keep things dry.
            ~ Avoid using logic in views.
            ~ Use models for business logic and helpers for presentation logic.
            ~ This is open source software. Consider the people who will read your code, and make it look nice for them. It's sort of like hosting a party: Perhaps your home is messy when your running out the door after eating breakfast and forget to do the dishes, but with having friends over you want your place to look as fresh and tidy as possible so that everyone can enjoy the space.

LICENSING
      This project has been licensed under the MIT open source license. Check the LICENSE file in the root directory for more information.
            ~ https://github.com/byojelly/mrm/blob/master/LICENSE



Enjoy!
