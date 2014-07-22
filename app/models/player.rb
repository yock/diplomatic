class Player < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  validates :game, :user, presence: true

  def self.find_player(game, user)
    where(game: game, user: user).first
  end
end
