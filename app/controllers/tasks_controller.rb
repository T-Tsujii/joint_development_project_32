class TasksController < ApplicationController
  # タスクの新規登録アクション
  def new
    @task = Task.new(task_params)
  end

  # タスクの登録完了アクション
  def create
    Task.create(task_params)
  end

  # StrongParameterの記述部分
  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end
