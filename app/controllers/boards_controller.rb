class BoardsController < ApplicationController
  
  def new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to root_url
  end

  def show
    @board = Board.find(params[:id])
    @lists = @board.lists
    @list = List.new
    @task = @board.tasks.build
  end

  def index
    @boards = Board.all
  end

  private
    def board_params
      params.require(:board).permit(:name)
    end
end
