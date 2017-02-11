class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.text :poster
      t.integer :year
      t.text :long_text_16MB, :synopsis
      t.timestamps null: false
    end
  end
end
