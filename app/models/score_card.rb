class ScoreCard < ActiveRecord::Base
  attr_accessible :player_id, :points, :score_board_id
  attr_accessor :add_points, :remove_points

  belongs_to :score_board
  belongs_to :player

  def tally_points(args = {})
    self.points += args[:add].to_f
    self.points -= args[:remove].to_f
  end
end
