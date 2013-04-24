class ScoreCard < ActiveRecord::Base
  attr_accessible :player_id, :points, :score_board_id

  belongs_to :score_board
  belongs_to :player
end
