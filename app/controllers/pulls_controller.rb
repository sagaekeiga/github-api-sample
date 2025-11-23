```ruby
# frozen_string_literal: true

class PullsController < ApplicationController
  before_action :authenticate_user!

  def create
    @pull = current_user.pulls.new(pull_params)

    if @pull.save
      redirect_to @pull, notice: 'プルリクエストが作成されました'
    else
      render :new, alert: 'プルリクエストの作成に失敗しました'
    end
  end

  def show
    @pull = Pull.find(params[:id])
  end

  private

  def pull_params
    params.require(:pull).permit(:title, :description, :repository_id)
  end
end
```

```