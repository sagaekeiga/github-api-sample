```ruby
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Report, type: :model do
  let(:user) { create(:user) }
  let(:report) { build(:report, user: user) }

  describe 'validations' do
    it 'is invalid without a start date' do
      report.start_date = nil
      expect(report.valid?).to eq(false)
    end

    it 'is invalid without an end date' do
      report.end_date = nil
      expect(report.valid?).to eq(false)
    end

    it 'is invalid without development time' do
      report.development_time = nil
      expect(report.valid?).to eq(false)
    end

    it 'is invalid with negative development time' do
      report.development_time = -1
      expect(report.valid?).to eq(false)
    end
  end
end
```

```