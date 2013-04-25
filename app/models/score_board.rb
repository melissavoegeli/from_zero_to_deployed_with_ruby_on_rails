class ScoreBoard < ActiveRecord::Base
  attr_accessible :game, :player_ids

  validates :game, :presence => true

  has_many :score_cards
  has_many :players, :through => :score_cards

  # the score board form is going to create
  # score card relations on our for each
  # player id we include
  accepts_nested_attributes_for :players

  # all of our valid players we allow
  def initialized_players
    Player.all
  end
end
