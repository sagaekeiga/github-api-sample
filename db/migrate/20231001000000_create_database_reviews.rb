```ruby
class CreateDatabaseReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :database_reviews do |t|
      t.string :table_name, null: false
      t.string :column_name, null: false
      t.string :data_type, null: false
      t.string :constraints, null: false
      t.text :comments

      t.timestamps
    end
  end
end
```

```