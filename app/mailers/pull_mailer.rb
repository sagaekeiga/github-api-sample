```ruby
# frozen_string_literal: true

class PullMailer < ApplicationMailer
  def notify_pull_creation(pull)
    @pull = pull
    mail(to: @pull.user.email, subject: '新しいプルリクエストが作成されました')
  end
end
```

```