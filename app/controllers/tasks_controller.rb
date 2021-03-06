class TasksController < ApplicationController
  # タスクの一覧表示アクション
  def index
    @tasks = Task.all
  end

  # タスクの新規登録アクション
  def new
    @task = Task.new
  end

  # タスクの登録完了アクション
  def create
    Task.create(task_params)
  end

  # タスクの詳細表示アクション
  def show
    @task = Task.find(params[:id])
  end

  # タスクの編集アクション
  def edit
    @task = Task.find(params[:id])
  end

  # タスクの更新アクション
  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

  # StrongParameterの記述部分
  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  # StrongParameterの記述部分
  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end
