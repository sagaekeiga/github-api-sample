```ruby
# frozen_string_literal: true

class CreateRecordings < ActiveRecord::Migration[6.0]
  def change
    create_table :recordings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.integer :duration, null: false
      t.string :file_url, null: false, unique: true

      t.timestamps
    end
  end
end
```

```