class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :location
      t.date :d8

      t.timestamps null: false
    end
  end
end
