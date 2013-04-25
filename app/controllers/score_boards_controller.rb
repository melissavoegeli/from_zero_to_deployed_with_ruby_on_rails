class ScoreBoardsController < ApplicationController
  respond_to :html
  # A typical restful controller is new, create, edit, update, destroy, show
  # you can render explicit templates in each action
  # by default it will automatically look in app/views/controller_name/
  # for the template with the same name as the action
  # actions can also respond with different formats: json and html for example
  def new
    # create a new instance of model
    @score_board = ScoreBoard.new
  end

  def create
    # create new instance of model initialized with score_board params
    @score_board = ScoreBoard.new(params[:score_board])
    # if we can save the record, redirect to @score_board show page
    # else render the template action new again
    if @score_board.save
      redirect_to(@score_board, :notice => 'That worked')
    else
      render :action => 'new'
    end
  end

  # using posted param of resource's id, create an instance of it
  def show
    @score_board = ScoreBoard.find(params[:id])
  end
end
