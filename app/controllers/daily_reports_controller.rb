class DailyReportsController < ApplicationController
  def new
    @daily_report = DailyReport.new
  end

  def create
    @daily_report = DailyReport.new(daily_report_params)
    if @daily_report.save
      redirect_to root_path, notice: '日報が正常に作成されました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def daily_report_params
    params.require(:daily_report).permit(:content, :todo, :stepup, :ktp)
  end
end