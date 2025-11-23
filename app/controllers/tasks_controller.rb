```ruby
# frozen_string_literal: true

class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :parent_task_id)
  end
end
```

```