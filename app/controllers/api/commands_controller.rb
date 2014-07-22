module API
  class CommandsController < API::EndpointController

    def show
      @command = Command.find(params.require('id'))
    end

    def create
      command_params[:player] = current_player
      @command = Command.create!(command_params)
      render 'api/commands/show', status: :created
    end

    protected

    def game
      @game ||= Game.find(params.require(:game_id))
    end

    def current_player
      @player ||= Player.find_player(game, current_user)
    end

    def command_params
      params.require('command').permit('text')
    end
  end
end
