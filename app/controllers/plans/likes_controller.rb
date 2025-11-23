```ruby
# frozen_string_literal: true

class Plans::LikesController < Users::BaseController
  before_action :set_plan

  def create
    @like = Plans::Like.new(user: current_user, plan: @plan)

    if @like.save
      render json: { success: true, likeCount: @plan.likes.count }, status: :created
    else
      render json: { success: false, errors: @like.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @like = Plans::Like.find_by(user: current_user, plan: @plan)

    if @like&.destroy
      render json: { success: true, likeCount: @plan.likes.count }, status: :ok
    else
      render json: { success: false, errors: ['Like not found'] }, status: :not_found
    end
  end

  private

  def set_plan
    @plan = Plan.find(params[:plan_id])
  end
end
```

```