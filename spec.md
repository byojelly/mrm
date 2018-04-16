Specifications for the Rails Assessment
Specs:

 [X] Using Ruby on Rails for the project
 [X] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
      -Shop has many items
 [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
      -Item belongs to a shop
 [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      -Items have many tuneups, Technicians have many tuneups, items have many technicians through tuneups
 [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g.
    ingredients.quantity)
      -Date of tuneup at creation of item
 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      - See models for items, shops etc. Item (presence of name etc, condition with specific inputs, year)
 [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL:e /users/most_recipes)
      - Item, scope = available (checks an item where there available attribute is true) / available_and_new (builds on previous scope and orders from newest to oldest by creation date and yields top 6)
      -used on genericpagecontroller which is on the homepage

 [x] Include signup (how e.g. Devise)
      -using devise, RegistrationsController also creates a contact at instantiation

 [x] Include login (how e.g. Devise)
    -using devise

 [x] Include logout (how e.g. Devise)
      - using devise
 [x] Include third party signup/login (how
   githube.g. Devise/OmniAuth)
      -using devise, RegistrationsController also creates a contact at instantiation
      - github
      - amazon

 [x] Include nested resource show or index (URL e.g. users/2/recipes)
      - shop items.  Setup in routes files. Shop show, with item index

 [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
      - /shops/:shop_id/items/new


 [X] Include form display of validation errors (form URL e.g. /recipes/new
      - shop / items



Confirm:

 [x] The application is pretty DRY
 [x] Limited logic in controllers
 [x] Views use helper methods if appropriate
      - tuneups date_format helper
 [x] Views use partials if appropriate



Notes
1) rails new mysticridgemusic #setup new project
2) copy of gemfiles and understand how they working
3) setup devise for user
4) setup migrations using rails generator model
5) setup required associations in models
6) setup validations for database data (contact, item)
7) install pundit dependencies, setup policy classes at later time
8) setup routes and visuals of site using, views, controllers, and models
9) setup omniauth login
    used https://www.codementor.io/anaumov/rails-omniauth-with-devise--github-example-du107rmn7 as guide along with loose help from https://richonrails.com/articles/google-authentication-in-ruby-on-rails/ (last link does not take devise into consideration)
    Steps
    1 - rails gem
          gem 'dotenv-rails'  #allows us to setup a file to store our client and secret keys for omniauth without sending to github
          gem 'omniauth'  #gem to allow omniauth (may already exist in devise)
          gem 'omniauth-github'
    2-    in routes add route to route ommni auth CallbacksController
    3 - create callbacks controller and add methods for each omniauth
    4 - add a migrations file with table columns uid, provider, and any other table fields necessary
    5 - in User module, activate omniauthable in devise, and setup class method self.from_omniauth(auth) method that sets the return attributes from the site
    6 - create app with the omni auth site and obtain  the app key and secret code
    7  - this project uses dot-env gem to hide the app code and secret key from github.  Under root directory, .env file has the the code and key, config/initializers/devise.rb update with
              config.omniauth :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], :scope => 'user:email'
              config.omniauth :amazon, ENV['AMAZON_KEY'], ENV['AMAZON_SECRET']#, :scope => 'profile:user_id', 'profile:email'

    adding additional omniauth affects the following:
        initial) lookup omniauth provider gem, follow instructions on setting up app with the provider interface, provide callback url like http://localhost:3000/users/auth/amazon/callback, and obtain app key and app secret
      - 1) gemfile
        2) CallbacksController add method matching gemfile name
        3) initialize/devise.rb
        4) user model (depending on how you set it up, my case not)
        4) views file where signin link is located
10) set nested hashes added to shops/:shop_id/items/:item_id, located on shops show page and home screen.
11) setup general crud actions for items, shops etc
12) has many through setup with items have many tuneups, technicians have many tuneups, tuneups belong to technicians and items
    - in order to create a new contact when a user is initialized, i had to devise generate the user controllers and add code into the RegistrationsController as well as the CallbacksController (omniauth)


Name: <%= @contact.name%></br>
Address: <%= @contact.address%></br>
City: <%= @contact.city%></br>
State: <%= @contact.state%></br>
Zip: <%= @contact.zip%></br>
Phone: <%= @contact.phone%></br>
