```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build(:task) }

  describe 'associations' do
    it 'can have a parent task' do
      parent_task = create(:task)
      task.parent = parent_task
      expect(task.parent).to eq(parent_task)
    end

    it 'can have subtasks' do
      task_with_subtask = create(:task, :with_subtask)
      expect(task_with_subtask.subtasks.count).to eq(1)
    end
  end

  describe 'validations' do
    it 'is invalid without a title' do
      task.title = ''
      expect(task.valid?).to eq(false)
    end
  end
end
```

このコードは、タスクに親タスクを設定するためのマイグレーション、モデル、ファクトリ、テストを含んでいます。既存のコードベースのスタイルや命名規則に従って作成されています。必要に応じて、他の関連ファイルや機能を追加することができます。