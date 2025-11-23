```ruby
# frozen_string_literal: true

class User < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :reports, dependent: :destroy

  # Existing validations and methods...
end
```

```