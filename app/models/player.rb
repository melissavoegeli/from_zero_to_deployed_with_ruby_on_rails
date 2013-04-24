class Player < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :length => { :minimum => 2 }, :message => 'not valid'

  has_many :score_cards
  has_many :score_boards, :through => score_cards
end
