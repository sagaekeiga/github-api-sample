```ruby
# frozen_string_literal: true

class Users::ReportsController < Users::BaseController
  before_action :set_report, only: %i(show edit update destroy)

  def index
    @reports = current_user.reports.order(created_at: :desc)
    @report = Report.new
  end

  def show; end

  def new
    @report = Report.new
  end

  def create
    @report = current_user.reports.new(report_params)
    if @report.save
      redirect_to users_reports_path, notice: 'レポートを作成しました'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @report.update(report_params)
      redirect_to users_reports_path, notice: 'レポートを更新しました'
    else
      render :edit
    end
  end

  def destroy
    @report.destroy
    redirect_to users_reports_path, notice: 'レポートを削除しました'
  end

  private

  def report_params
    params.require(:report).permit(:start_date, :end_date, :development_time)
  end

  def set_report
    @report = current_user.reports.find(params[:id])
  end
end
```

```