```ruby
# frozen_string_literal: true

class Task < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :parent, class_name: 'Task', optional: true
  has_many :sub_tasks, class_name: 'Task', foreign_key: 'parent_id', dependent: :destroy

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true

  # -------------------------------------------------------------------------------
  # Scopes
  # -------------------------------------------------------------------------------
  scope :with_parent, ->(parent_id) { where(parent_id: parent_id) }
end
```

```