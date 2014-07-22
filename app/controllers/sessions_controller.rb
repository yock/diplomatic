class SessionsController < ApplicationController
  def create
    auth_provider = Authentication.from_omniauth(omniauth_params)
    user = auth_provider.user ? auth_provider.user : User.new
    if user.new_record?
      user.save validate: false
      auth_provider.update(user: user)
      redirect_to edit_registration_path
    else
      redirect_to root_url, notice: 'Signed in!'
    end
    session[:user_id] = user.id
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  private

  def omniauth_params
    env['omniauth.auth']
  end
end
