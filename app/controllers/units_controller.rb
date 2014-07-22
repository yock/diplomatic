module API
  class UnitsController < API::EndpointController
    def index
      @units = Unit.all
    end
  end
end
