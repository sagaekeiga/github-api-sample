```ruby
# frozen_string_literal: true

FactoryBot.define do
  factory :users_report, class: 'Users::Report' do
    user { nil }
    start_date { Date.today }
    end_date { Date.today + 7.days }
    development_time { 40 } # 例: 40時間
  end
end
```

このコードは、ユーザーが開発の報告を行うためのモデル、コントローラー、ローカライズファイル、ファクトリを含んでいます。各ファイルは、既存のコードベースのスタイルに従って作成されています。