class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to(new_score_board_path, :notice => 'That worked')
    else
      render :action => 'new'
    end
  end

end
