class CallbacksController < Devise::OmniauthCallbacksController
#for the omniauth methods below, the if statements were added to allow users to sign in and out of the mrm system using different omniauth providers. The method searches to see if a user exists in the databse using the omniauth email. If it does exist then it sets the user to existing user, if not it creates a new user.
  def github
    if User.find_by(email: request.env["omniauth.auth"].info.email)
        @user = User.find_by(email: request.env["omniauth.auth"].info.email)
    else
        @user = User.from_omniauth(request.env["omniauth.auth"])
        @user.contact = Contact.create
    end
    sign_in_and_redirect @user
  end
  def amazon
    if User.find_by(email: request.env["omniauth.auth"].info.email)
        @user = User.find_by(email: request.env["omniauth.auth"].info.email)
    else
        @user = User.from_omniauth(request.env["omniauth.auth"])
        @user.contact = Contact.create
    end
    sign_in_and_redirect @user
  end
#the above code would have been made dry, but the way omniauth works requires the code to be in the method itself. Cant make dr
end
