```ruby
# frozen_string_literal: true

#
# データベースレビューサービス
#
class DatabaseReviewService
  def initialize(schema)
    @review = DatabaseReview.new(schema)
  end

  #
  # データベースレビューを実行する
  #
  def perform_review
    @review.review_results
  end
end
```

```