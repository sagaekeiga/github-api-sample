```ruby
# frozen_string_literal: true

class AddParentIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :parent_id, :integer
    add_foreign_key :tasks, :tasks, column: :parent_id
  end
end
```

```