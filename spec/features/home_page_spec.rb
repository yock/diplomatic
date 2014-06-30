require 'spec_helper'

feature 'Home page' do
  context 'when not signed in' do
    scenario 'has a Twitter sign in link' do
      visit '/'
      expect(page).to have_link('Sign in with Twitter')
    end
  end
  context 'when signed in' do
    scenario 'has a sign out link' do
      feature_sign_in
      visit '/'
      expect(page).to have_link('Sign out')
    end
  end
end
