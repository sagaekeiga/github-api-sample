```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pull, type: :model do
  it 'is valid with valid attributes' do
    pull = Pull.new(title: 'Test Pull', description: 'This is a test pull request', user: create(:user), repository: create(:repository))
    expect(pull).to be_valid
  end

  it 'is not valid without a title' do
    pull = Pull.new(title: nil)
    expect(pull).to_not be_valid
  end

  it 'is not valid without a description' do
    pull = Pull.new(description: nil)
    expect(pull).to_not be_valid
  end
end
```

```