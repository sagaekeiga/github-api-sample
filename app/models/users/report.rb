```ruby
# frozen_string_literal: true

class Users::Report < ApplicationRecord
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
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :start_date, :date
  attribute :end_date, :date
  attribute :development_time, :integer

  # -------------------------------------------------------------------------------
  # Instance Methods
  # -------------------------------------------------------------------------------
  def report_duration
    (end_date - start_date).to_i
  end
end
```

```