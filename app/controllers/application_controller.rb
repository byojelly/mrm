class ApplicationController < ActionController::Base
  include Pundit #includes the pundit gem for suthorizations organizations
                  #policy classes will be necessary when ready to setup aurothrizations
                  #https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role
                  #at this time pundit will not be coded due to time constraints
  protect_from_forgery with: :exception

  def require_logged_in
      if current_user.id != params[:id].to_i
            redirect_to genericpage_path
      end
  end
end
