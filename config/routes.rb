```ruby
Rails.application.routes.draw do
  resources :reports, only: [:new, :create, :index]
  # Other routes...
end
```

```