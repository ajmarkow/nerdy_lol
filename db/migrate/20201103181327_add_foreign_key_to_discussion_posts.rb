class AddForeignKeyToDiscussionPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :discussion_posts, :discussion_id, :integer
    add_foreign_key :discussion_posts, :discussion
  end
end
