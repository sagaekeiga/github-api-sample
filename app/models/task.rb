```ruby
# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :parent_task, class_name: 'Task', optional: true
  has_many :sub_tasks, class_name: 'Task', foreign_key: 'parent_task_id', dependent: :destroy

  validates :name, presence: true
end
```

```