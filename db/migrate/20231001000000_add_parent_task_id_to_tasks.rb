```ruby
# frozen_string_literal: true

class AddParentTaskIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :parent_task_id, :integer, index: true
    add_foreign_key :tasks, :tasks, column: :parent_task_id, on_delete: :nullify
  end
end
```

```