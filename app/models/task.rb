```ruby
# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :parent, class_name: 'Task', optional: true
  has_many :subtasks, class_name: 'Task', foreign_key: :parent_id, dependent: :destroy

  validates :title, presence: true
  # その他のバリデーションやメソッドをここに追加
end
```

```