```ruby
# frozen_string_literal: true

class Pull < ApplicationRecord
  belongs_to :user
  belongs_to :repository

  validates :title, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 2000 }
end
```

```