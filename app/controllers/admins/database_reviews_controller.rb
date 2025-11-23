```ruby
# frozen_string_literal: true

class Admins::DatabaseReviewsController < Admins::BaseController
  def index
    @database_reviews = DatabaseReview.all.order(created_at: :desc)
  end

  def show
    @database_review = DatabaseReview.find(params[:id])
  end

  def create
    @database_review = DatabaseReview.new(database_review_params)

    if @database_review.save
      redirect_to admins_database_reviews_url, notice: 'データベースレビューが作成されました'
    else
      render :new
    end
  end

  private

  def database_review_params
    params.require(:database_review).permit(:table_name, :column_name, :data_type, :constraints, :comments)
  end
end
```

```