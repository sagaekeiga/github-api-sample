```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
  describe 'like notification' do
    let(:user) { create(:user) }
    let(:plan) { create(:plan) }
    let(:like) { create(:plans_like, user: user, plan: plan) }

    it 'sends a notification email when a plan is liked' do
      expect { UserMailer.like_notification(user, plan).deliver_now }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end
```

```