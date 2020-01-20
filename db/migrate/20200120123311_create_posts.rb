class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content, null:false
      t.string :post_user, null:false
      t.string :book_image
      t.string :title, null:false
      t.string :phrase,null:false

      t.timestamps
    end
  end
end
