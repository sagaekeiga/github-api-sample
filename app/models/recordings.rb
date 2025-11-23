```ruby
# frozen_string_literal: true

class Recordings < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :title, presence: true
  validates :duration, presence: true
  validates :file_url, presence: true, uniqueness: true

  # -------------------------------------------------------------------------------
  # Scopes
  # -------------------------------------------------------------------------------
  scope :recent, -> { order(created_at: :desc) }
end
```

```