class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    @user.contact = Contact.create
    sign_in_and_redirect @user
  end
  def amazon
    @user = User.from_omniauth(request.env["omniauth.auth"])
    @user.contact = Contact.create
    sign_in_and_redirect @user
  end
#the above code would have been made dry, but the way omniauth works requires the code to be in the method itself. Cant make dry
end
