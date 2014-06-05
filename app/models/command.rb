class Command < ActiveRecord::Base
  def parse
    position = :unit_type
    text.split(' ').each do |token|
      if position == :unit_type
        self.unit_type = token
      end
    end
  end
end
