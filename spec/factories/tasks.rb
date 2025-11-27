```ruby
# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    name { "Sample Task" }
    parent_id { nil }
  end
end
```

```