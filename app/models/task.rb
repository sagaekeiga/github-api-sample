```ruby
# frozen_string_literal: true

class Task < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :status, inclusion: { in: %w[pending completed] }

  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :workspace
  belongs_to :user

  # -------------------------------------------------------------------------------
  # Scopes
  # -------------------------------------------------------------------------------
  scope :pending, -> { where(status: 'pending') }
  scope :completed, -> { where(status: 'completed') }
end
```

```