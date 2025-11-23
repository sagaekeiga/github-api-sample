```ruby
# frozen_string_literal: true

class Workspace < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true, uniqueness: true

  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :tasks, dependent: :destroy
  has_many :users, through: :user_workspaces

  # -------------------------------------------------------------------------------
  # Additional Relations
  # -------------------------------------------------------------------------------
  has_many :user_workspaces, dependent: :destroy
end
```

```