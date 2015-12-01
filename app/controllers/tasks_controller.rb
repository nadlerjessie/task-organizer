class TasksController < ApplicationController
  def create
    @task = Task.create(task_params)
    respond_to do |format|
      format.html {redirect_to "boards/#{@task.board.id}"}
      format.js {}
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html {redirect_to "boards/#{@task.board.id}"}
      format.js {}
    end
  end

  private
    def task_params
      params.require(:task).permit(:description, :priority, :list_id)
    end
end
