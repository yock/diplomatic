class Command < ActiveRecord::Base
  belongs_to :player

  validates :player, presence: true

  def parse
    position = :unit_type
    text.split(' ').each do |token|
      if position == :unit_type
        self.unit_type = token
      end
    end
  end
end
