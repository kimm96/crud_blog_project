class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "title"
      t.text "contents"
      t.string "category"
      # t.date "datentime"
      
      t.timestamps null: false
    end
  end
end
