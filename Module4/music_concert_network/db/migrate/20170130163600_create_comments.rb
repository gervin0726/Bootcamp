class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :concert, index: true
      t.integer :comment_parent, index:true
      t.datetime :date
      t.string :nickname
      t.text :content, :limit => 16777215
      t.timestamps null: false
    end
  end
end
