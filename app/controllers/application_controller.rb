class ApplicationController < ActionController::Base
  include Pundit #includes the pundit gem for suthorizations organizations
                  #policy classes will be necessary when ready to setup aurothrizations
                  #https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role

  protect_from_forgery with: :exception
end
