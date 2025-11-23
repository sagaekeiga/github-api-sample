```ruby
# frozen_string_literal: true

class Admins::PlansController < Admins::BaseController
  def index
    @plans = Plan.order(created_at: :desc)
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
    # ここで写真追加ボタンの表示に必要なデータを準備
  end
end
```

```