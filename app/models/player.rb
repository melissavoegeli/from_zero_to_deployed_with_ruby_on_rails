class Player < ActiveRecord::Base
  # Active Record is a query interface to your database that provides ORM
  # Example: Player.where(:name => 'Name')
  # This generates Select * from Player where name = 'Name';
  attr_accessible :name

  validates :name, :presence => true, :length => { :minimum => 2 }, :message => 'not valid'

  has_many :score_cards
  has_many :score_boards, :through => score_cards
end
