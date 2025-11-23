```ruby
# frozen_string_literal: true

class RecordingsController < ApplicationController
  before_action :set_recording, only: %i[show edit update destroy]

  def index
    @recordings = Recording.recent
  end

  def show; end

  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.new(recording_params)
    @recording.user = current_user

    if @recording.save
      redirect_to @recording, notice: 'Recording was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @recording.update(recording_params)
      redirect_to @recording, notice: 'Recording was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @recording.destroy
    redirect_to recordings_url, notice: 'Recording was successfully destroyed.'
  end

  private

  def set_recording
    @recording = Recording.find(params[:id])
  end

  def recording_params
    params.require(:recording).permit(:title, :duration, :file_url)
  end
end
```

```