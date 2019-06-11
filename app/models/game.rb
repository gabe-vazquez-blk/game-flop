class Game < ApplicationRecord
  belongs_to :console


  def self.select_by_keyword(keyword)
    self.all.select do |game|
      game.title.downcase.include?(keyword.downcase)
    end
  end

end
