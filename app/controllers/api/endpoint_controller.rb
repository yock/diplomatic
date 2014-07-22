module API
  class EndpointController < ApplicationController
    doorkeeper_for :all unless Rails.env.test?
  end
end
