class SessionsController < ApplicationController
  def create
    auth_provider = Authentication.from_omniauth(omniauth_params)
    user = auth_provider.user ? auth_provider.user : User.create!
    session[:user_id] = user.id
    # Redirect to registration if user is new
    redirect_to root_url, notice: 'Signed in!'
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
