```ruby
# frozen_string_literal: true

class Admins::TasksController < Admins::BaseController
  before_action :set_task, only: %i[show edit update destroy]

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to admins_tasks_path, notice: 'タスクを作成しました'
    else
      render :new
    end
  end

  def update
    if @task.update(task_params)
      redirect_to admins_tasks_path, notice: 'タスクを更新しました'
    else
      render :edit
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :parent_id)
  end
end
```

```