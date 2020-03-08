class RenameUserIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :user_id, :post_user_id
  end
end
