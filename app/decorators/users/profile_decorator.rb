```ruby
# frozen_string_literal: true

class Users::ProfileDecorator < Draper::Decorator
  delegate_all

  def formatted_bio
    h.simple_format(bio)
  end

  def location_with_icon
    "#{location} <i class='fa fa-map-marker'></i>".html_safe
  end
end
```

```