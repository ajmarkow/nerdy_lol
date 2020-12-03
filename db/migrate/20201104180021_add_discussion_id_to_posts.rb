class AddDiscussionIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :discussions, :post_id, :integer
    add_foreign_key :discussions, :posts
  end
end
