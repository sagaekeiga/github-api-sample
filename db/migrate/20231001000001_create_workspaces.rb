```ruby
class CreateWorkspaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workspaces do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :workspaces, :name, unique: true
  end
end
```

```