class Sale < ActiveRecord::Base
  class << self
    def by_month_totals
      group_by_month(:created_at).sum(:total)
    end

    def by_day_totals
      where('created_at >= ?', Time.now.beginning_of_day)
      .where('created_at <= ?', Time.now.end_of_day)
      .group_by_minute(:created_at).sum(:total)
    end

    def by_week_totals
      where('created_at >= ?', Time.now.beginning_of_month)
      .where('created_at <= ?', Time.now.end_of_month)
      .group_by_week(:created_at).sum(:total)
    end
  end
end
