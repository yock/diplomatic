module API
  class PlayersController < API::EndpointController
    def create
      @game = Game.find(params.require(:game_id))
      Player.create(game: @game, user: current_user)
      head :created
    end
  end
end
