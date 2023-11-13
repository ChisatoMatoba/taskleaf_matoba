# frozen_string_literal: true

# TasksController handles the management of tasks in the application.
class TasksController < ApplicationController
  # インデックス
  def index
    @tasks = Task.all
  end

  # 詳細表示
  def show
    @task = Task.find(params[:id])
  end

  # 新規投稿
  def new
    @task = Task.new
  end

  # 新規投稿の保存
  def create
    task = Task.new(task_params)
    task.save!
    redirect_to tasks_url, notice: "タスク「#{task.name}」を登録しました。"
  end

  # 編集
  def edit; end

  private

  # taskモデルのパラメータ
  def task_params
    params.require(:task).permit(:name, :description)
  end
end
