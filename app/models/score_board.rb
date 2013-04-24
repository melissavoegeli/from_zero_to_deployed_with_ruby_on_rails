class ScoreBoard < ActiveRecord::Base
  attr_accessible :game

  validates :game, :presence => true

  has_many :score_cards
  has_many :players, :through => :score_cards
end
