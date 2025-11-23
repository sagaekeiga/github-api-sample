```ruby
# frozen_string_literal: true

class Users::Profile < ApplicationRecord
  belongs_to :user

  validates :bio, length: { maximum: 500 }
  validates :location, presence: true
end
```

```