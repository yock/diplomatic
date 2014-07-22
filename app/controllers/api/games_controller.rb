module API
  class GamesController < API::EndpointController
    def create
      @game = Game.create!
      render 'api/games/show', status: :created
    end
  end
end
