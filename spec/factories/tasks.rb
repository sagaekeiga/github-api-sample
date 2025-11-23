```ruby
# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { 'Sample Task' }
    description { 'This is a sample task.' }
    parent { nil }

    trait :with_subtask do
      after(:create) do |task|
        create(:task, parent: task)
      end
    end
  end
end
```

```