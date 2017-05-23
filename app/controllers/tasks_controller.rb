class TasksController < ApplicationController

    # get all your tasks
  def index
    @tasks = Task.all
  end

    # find a task
  def show
    @task = Task.find(params[:id])
  end

    # create a new task
  def new
    @task = Task.new
  end

    # post a new task
  def create
    # create task
    @task = Task.create(task_params)
    # redirect to the path of where your index is (prefix of the path)
    redirect_to tasks_path
  end

    # edit a task
  def edit
    @task = Task.find(params[:id])
  end

    # update a task
  def update
    # find the task you want to update
    @task = Task.find(params[:id])
    # update your task using the task params
    @task.update(task_params)
    # redirect to the task page
    redirect_to tasks_path(@task)
  end

    # delete a task
  def destroy
    # find the task you want to destroy
    @task = Task.find(params[:id])
    # delete task
    @task.destroy
    # redirect to main tasks page
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :details)
  end

end
