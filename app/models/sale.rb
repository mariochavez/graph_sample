class Sale < ActiveRecord::Base
  class << self
    def by_month_totals
      group_by_month(:created_at).sum(:total)
    end

    def by_day_totals
      group_by_day(:created_at).sum(:total)
    end

    def by_week_totals
      group_by_week(:created_at).sum(:total)
    end
  end
end
