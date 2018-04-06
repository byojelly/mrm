source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


#adding the following gems----------------
gem 'devise'
gem 'jquery-rails' #was in the flatiron store project
gem 'sdoc', '~> 0.4.0',          group: :doc   #was in the flatiron store project
gem 'pundit' #Pundit offers a way for us to organize our authorization code. With Pundit, you create Policy classes for your models, which define what users can do to those models. This gives you a straightforward, modular way to separate the concern of authorization from your controllers and your model logic.
gem 'omniauth'  #gem to allow omniauth (may already exist in devise)
gem 'omniauth-github'
#-----------------------------------------

        # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
        gem 'rails', '~> 5.1.4'
        # Use sqlite3 as the database for Active Record
        gem 'sqlite3'
        # Use Puma as the app server
        gem 'puma', '~> 3.7'
        # Use SCSS for stylesheets
        gem 'sass-rails', '~> 5.0'
        # Use Uglifier as compressor for JavaScript assets
        gem 'uglifier', '>= 1.3.0'
        # See https://github.com/rails/execjs#readme for more supported runtimes
        # gem 'therubyracer', platforms: :ruby

        # Use CoffeeScript for .coffee assets and views
        gem 'coffee-rails', '~> 4.2'
        # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
        gem 'turbolinks', '~> 5'
        # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
        gem 'jbuilder', '~> 2.5'
        # Use Redis adapter to run Action Cable in production
        # gem 'redis', '~> 3.0'
        # Use ActiveModel has_secure_password
        # gem 'bcrypt', '~> 3.1.7'

        # Use Capistrano for deployment
        # gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

#added based on flatiron store lab------------------
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
        gem "factory_bot_rails"
              #factory_bot is a fixtures replacement with a straightforward definition syntax, support for multiple build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects), and support for multiple factories for the same class (user, admin_user, and so on), including factory inheritance.
        gem "simplecov"
              #SimpleCov is a code coverage analysis tool for Ruby. It uses Ruby's built-in Coverage library to gather code coverage data, but makes processing its results much easier by providing a clean API to filter, group, merge, format, and display those results, giving you a complete code coverage suite that can be set up with just a couple lines of code.
              #In most cases, you'll want overall coverage results for your projects, including all types of tests, Cucumber features, etc. SimpleCov automatically takes care of this by caching and merging results when generating reports, so your report actually includes coverage across your test suites and thereby gives you a better picture of blank spots.
              #The official formatter of SimpleCov is packaged as a separate gem called simplecov-html, but will be installed and configured automatically when you launch SimpleCov. If you're curious, you can find it on GitHub, too.
        gem "database_cleaner"
              #Database Cleaner is a set of strategies for cleaning your database in Ruby.
              #The original use case was to ensure a clean state during tests. Each strategy is a small amount of code but is code that is usually needed in any ruby app that is testing with a database.
        gem "pry"
              #Pry is a powerful alternative to the standard IRB shell for Ruby. It is written from scratch to provide a number of advanced features
        gem "guard-rspec", require: false
              #Guard::RSpec allows to automatically & intelligently launch specs when files are modified.
  #



# --------------------------------------------------

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
