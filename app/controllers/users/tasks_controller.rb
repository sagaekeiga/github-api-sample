```ruby
# frozen_string_literal: true

class Users::TasksController < Users::BaseController
  before_action :authenticate_user!
  before_action :set_task, only: %i(show update destroy)

  def create
    @task = current_user.tasks.new(task_params)

    if @task.save
      redirect_to [:mypage, @task], notice: 'タスクを作成しました'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to [:mypage, @task], notice: 'タスクを更新しました'
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :status, :parent_id)
  end

  def set_task
    @task = current_user.tasks.find(params[:id])
  end
end
```

このコード雛形は、`tasks`テーブルに`parent_id`カラムを追加し、小タスクを親タスクに関連付けるための基本的な構造を提供します。マイグレーションファイル、モデル、ファクトリ、コントローラを含めており、既存のコードベースのスタイルに従っています。