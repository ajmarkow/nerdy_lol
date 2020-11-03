class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :discussion, foreign_key:true
      t.column(:content_body, :text)
      t.column(:likes, :integer)
      t.column(:discussion_id, :integer)
    end
  end
end
