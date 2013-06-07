class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new( params[:task] )
    if @task.save
      flash[:notice] = "Your task has now been listed!"
      redirect_to :root
    else
      flash[:notice] = "Not saved!"
      redirect_to :root
    end
  end
end
