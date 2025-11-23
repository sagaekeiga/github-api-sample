```ruby
# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :authenticate_user!

  def create
    task = current_user.tasks.new(task_params)
    if task.save
      render json: task, status: :created
    else
      render json: { errors: task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :parent_id)
  end
end
```

```