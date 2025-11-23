```ruby
# frozen_string_literal: true

class CreateRecordings < ActiveRecord::Migration[6.0]
  def change
    create_table :recordings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :video_url, null: false
      t.timestamps
    end
  end
end
```

```