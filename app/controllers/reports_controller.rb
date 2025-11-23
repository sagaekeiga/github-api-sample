```ruby
# frozen_string_literal: true

class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user

    if @report.save
      redirect_to reports_path, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  def index
    @reports = current_user.reports.order(created_at: :desc)
  end

  private

  def report_params
    params.require(:report).permit(:start_date, :end_date, :development_time)
  end
end
```

```