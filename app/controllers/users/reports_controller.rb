```ruby
# frozen_string_literal: true

class Users::ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /users/reports
  def index
    @reports = Users::Report.all
  end

  # GET /users/reports/new
  def new
    @report = Users::Report.new
  end

  # POST /users/reports
  def create
    @report = Users::Report.new(report_params)
    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  # GET /users/reports/:id
  def show
  end

  # GET /users/reports/:id/edit
  def edit
  end

  # PATCH/PUT /users/reports/:id
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/reports/:id
  def destroy
    @report.destroy
    redirect_to users_reports_url, notice: 'Report was successfully destroyed.'
  end

  private

  def set_report
    @report = Users::Report.find(params[:id])
  end

  def report_params
    params.require(:users_report).permit(:start_date, :end_date, :development_time, :user_id)
  end
end
```

```