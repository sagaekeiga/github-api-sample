```ruby
# frozen_string_literal: true

Rails.application.routes.draw do
  resources :recordings, only: [:create, :index]
end
```

このコード雛形は、録画データを保存するためのテーブルを作成し、関連するモデル、バリデーション、テストを含んでいます。また、シードデータに録画データの例を追加しました。必要に応じて、ユーザーIDやビデオURLを適切に変更してください。