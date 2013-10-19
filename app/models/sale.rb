class Sale < ActiveRecord::Base
  scope :by_time, ->(start, finish) { where(created_at: (start..finish)) }

  class << self
    def by_month_totals
      group_by_month(:created_at).order('MAX(created_at) DESC').sum(:total)
    end

    def by_day_totals
      by_time(Time.now.beginning_of_day, Time.now.end_of_day)
      .order('MAX(created_at) DESC')
      .group_by_minute(:created_at).sum(:total)
    end

    def by_week_totals
      by_time(Time.now.beginning_of_month, Time.now.end_of_month)
      .order('MAX(created_at) DESC')
      .group_by_week(:created_at).sum(:total)
    end
  end
end
