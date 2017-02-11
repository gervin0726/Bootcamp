class Concert < ActiveRecord::Base
  has_many :comments
  validates :artist, :date, :price, :venue, :description, presence: true
  class << self
    def today
      where('date > ?', Date.today)
    end
    def month
       where('date > ?', 1.month)
    end
    def price(price)
      where("price <= #{price}")
    end
  end
end
