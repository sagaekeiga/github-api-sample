```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DatabaseReviewService, type: :service do
  let(:schema) { { tables: [], constraints: [] } } # テスト用のスキーマを定義
  subject { described_class.new(schema) }

  describe '#perform_review' do
    it 'returns review results' do
      results = subject.perform_review
      expect(results).to include(:business_requirements_valid, :constraints_valid)
    end
  end
end
```

このコードは、データベース設計のレビューを行うための基本的な構造を提供します。`DatabaseReview`クラスは、ビジネス要件とインデックス、制約の検証を行うメソッドを持ち、`DatabaseReviewService`クラスはそのレビューを実行するサービスとして機能します。また、RSpecを使用したテストケースも含まれています。