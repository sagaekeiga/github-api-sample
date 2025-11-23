```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recording, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:video_url) }
  end
end
```

```