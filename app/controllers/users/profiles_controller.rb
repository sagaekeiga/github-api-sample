```ruby
# frozen_string_literal: true

class Users::ProfilesController < Users::BaseController
  before_action :set_user

  def show
    @profile = @user.profile || @user.build_profile
  end

  def update
    @profile = @user.profile

    if @profile.update(users_profile_params)
      redirect_to @profile, notice: 'プロフィールが更新されました'
    else
      render :show
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def users_profile_params
    params.require(:users_profile).permit(
      :bio,
      :avatar,
      :location
    )
  end
end
```

```