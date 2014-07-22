OmniAuth.config.test_mode = true

def omniauth_login
  auth = create(:authentication)
  OmniAuth.config.add_mock(:twitter, {:uid => auth.uid})
  get '/auth/twitter'
  request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
  get '/auth/twitter/callback'
end

