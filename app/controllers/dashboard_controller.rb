class DashboardController < ApplicationController
  respond_to :html, :js

  def index
    graph_type = params[:type].presence || 'month'

    sales_amounts = case graph_type
             when 'month' then Sale.by_month_totals
             when 'week' then Sale.by_week_totals
             when 'day' then Sale.by_day_totals
             else {}
             end

    @data = [{ name: "Sales by #{graph_type}", data: sales_amounts }]
    respond_with @data
  end
end
