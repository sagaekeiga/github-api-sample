```ruby
# frozen_string_literal: true

class Report < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :development_time, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # -------------------------------------------------------------------------------
  # Methods
  # -------------------------------------------------------------------------------
  def duration
    (end_date - start_date).to_i
  end
end
```

```