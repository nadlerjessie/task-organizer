class ListsController < ApplicationController
  def new
  end

  def create
    @list = List.new(list_params)
    @list.board = Board.find(params[:board_id])
    @list.save
    respond_to do |format|
      format.html {redirect_to "boards/#{@list.board.id}"}
      format.js {}
    end
  end

  def show
    @list = List.find(params[:id])
    @task = @list.tasks.build
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    respond_to do |format|
      format.html {redirect_to "boards/#{@list.board.id}"}
      format.js {}
    end
  end

  private
    def list_params
      params.require(:list).permit(:title, :board_id)
    end
end
