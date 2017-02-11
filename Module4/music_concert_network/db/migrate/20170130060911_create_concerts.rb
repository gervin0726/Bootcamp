class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.text :artist
      t.datetime :date
      t.float :price
      t.text :description, :limit => 16777215

      t.timestamps null: false
    end
  end
end
