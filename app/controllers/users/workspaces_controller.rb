```ruby
# frozen_string_literal: true

class Users::WorkspacesController < ApplicationController
  # 既存のアクション...

  def show
    # 既存のロジック...
    @show_button = true # ボタンを表示するためのフラグ
  end
end
```

```