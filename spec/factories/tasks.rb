```ruby
# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    sequence(:name) { |n| "Task #{n}" }
    status { :pending }
    parent { nil }

    trait :with_subtasks do
      after(:create) do |task|
        create_list(:task, 3, parent: task)
      end
    end
  end
end
```

```