class CommandsController < ApplicationController
  doorkeeper_for :all unless Rails.env.test?

  def show
    @command = Command.find(params.require('id'))
  end

  def create
    @command = Command.create(command_params)
    render 'commands/show', status: :created
  end

  protected

  def command_params
    params.require('command').permit('text')
  end
end
