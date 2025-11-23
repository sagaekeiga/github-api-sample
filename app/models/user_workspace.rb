```ruby
# frozen_string_literal: true

class UserWorkspace < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :user
  belongs_to :workspace

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :user_id, uniqueness: { scope: :workspace_id }
end
```

```