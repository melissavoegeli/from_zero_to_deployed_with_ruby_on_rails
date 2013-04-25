class ScoreCard < ActiveRecord::Base
  attr_accessible :player_id, :points, :score_board_id

  belongs_to :score_board
  belongs_to :player

  private

  def tally_points(args = {})
    self.points += args[:add].to_f
    self.points -= args[:remove].to_f
  end
end
