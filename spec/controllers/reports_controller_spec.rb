```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ReportsController, type: :controller do
  let(:user) { create(:user) }
  let(:valid_attributes) { { start_date: Date.today, end_date: Date.today + 1, development_time: 5 } }

  before do
    sign_in user
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new Report' do
      expect {
        post :create, params: { report: valid_attributes }
      }.to change(Report, :count).by(1)
    end

    it 'redirects to the reports index' do
      post :create, params: { report: valid_attributes }
      expect(response).to redirect_to(reports_path)
    end
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end
end
```

このコードは、ユーザーが着手日、完了日、開発に要した時間を報告するための基本的な機能を提供します。モデル、コントローラー、ビュー、テストを含めて、既存のコードベースのスタイルに従っています。