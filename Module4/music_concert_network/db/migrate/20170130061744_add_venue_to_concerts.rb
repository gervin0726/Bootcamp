class AddVenueToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :venue, :string
  end
end
