# frozen_string_literal: true

class Plans::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.plan_favorites.create!(plan_id: params[:plan_id])
    head :no_content
  rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotUnique
    head :unprocessable_entity
  end

  def destroy
    current_user.plan_favorites.find_by(plan_id: params[:plan_id])&.destroy
    head :no_content
  end
end
```

```