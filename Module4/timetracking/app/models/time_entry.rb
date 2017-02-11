class TimeEntry < ActiveRecord::Base
    belongs_to :project

  validates :minutes, presence: true

  class << self
    def last_month
      where('date > ?', Date.today - 1.month)
    end
  end
=begin
  def self.last_month
    Date.today - 1.month
  end
=end
end
