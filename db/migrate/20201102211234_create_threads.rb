class CreateThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :threads do |t|
      t.column(:title, :string)
      t.column(:topic,:string, array:true)
      t.column(:content_body,:text)
      t.column(:post_ids, :integer, array:true)
      t.column(:likes, :integer)
    end
  end
end
