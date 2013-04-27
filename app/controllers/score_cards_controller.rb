class ScoreCardsController < ApplicationController
  before_filter :update_points, :only => :update
  def update
    # most updates will use this AR method
    # @score_card.update_attributes(params[:score_card])
    if @score_card.save!
      redirect_to score_board_path(@score_card.score_board_id), :notice => 'That Worked'
    else
      redirect_to score_board_path(@score_card.score_board_id), :alert => "That didn't work"
    end
  end

  private

  def update_points
    @score_card = ScoreCard.find(params[:id])
    args = {:add => params[:score_card][:add_points], :remove => params[:score_card][:remove_points]}
    @score_card.tally_points(args)
  end
end
