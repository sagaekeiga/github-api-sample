```ruby
# frozen_string_literal: true

class Report < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user
  belongs_to :workspace

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :development_time, presence: true

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------
  #
  # 開発に要した時間を計算する
  #
  def calculate_development_time
    (end_date - start_date).to_i
  end
end
```

```