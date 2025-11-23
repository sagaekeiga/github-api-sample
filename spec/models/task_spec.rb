```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'is valid with valid attributes' do
    task = Task.new(name: 'Test Task')
    expect(task).to be_valid
  end

  it 'is not valid without a name' do
    task = Task.new(name: nil)
    expect(task).to_not be_valid
  end
end
```

このコードは、親タスクと小タスクの関連付けを行うためのマイグレーション、モデル、コントローラー、ファクトリー、テストを含んでいます。既存のコードスタイルに従い、適切なファイルパスに分けて生成しました。