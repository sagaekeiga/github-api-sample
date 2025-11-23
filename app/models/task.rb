```ruby
# frozen_string_literal: true

class Task < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Associations
  # -------------------------------------------------------------------------------
  belongs_to :parent_task, class_name: 'Task', optional: true
  has_many :sub_tasks, class_name: 'Task', foreign_key: 'parent_id', dependent: :destroy

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true
end
```

```