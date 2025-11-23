```ruby
# frozen_string_literal: true

class DatabaseReview < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :table_name, presence: true
  validates :column_name, presence: true
  validates :data_type, presence: true
  validates :constraints, presence: true

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :comments, default: ''
end
```

```