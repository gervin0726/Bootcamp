class Project < ActiveRecord::Base
  has_many :time_entries
  validates :name, presence:true

  class << self
    def self.clean_old
      projects = Project.where('created_at ?', last_week)
      projects.destroy_all
    end
    
    private
      def last_week
        Date.today - 7
      end
  end
end
