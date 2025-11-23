```ruby
# frozen_string_literal: true

FactoryBot.define do
  factory :recording do
    user { nil }
    title { 'Sample Recording' }
    duration { 120 } # Duration in seconds
    file_url { 'https://example.com/recordings/sample_recording.mp3' }
  end
end
```

```