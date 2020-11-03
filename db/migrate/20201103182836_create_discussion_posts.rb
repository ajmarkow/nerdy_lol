class CreateDiscussionPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :discussion_posts do |t|
     t.timestamps() 
      
    end
  end
end
