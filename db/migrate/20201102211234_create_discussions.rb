class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      # t.column(:title, :string)
      t.column(:topic,:string)
      t.column(:content_body,:text)
      # t.column(:post_id, :integer, array:true)
      # t.column(:likes, :integer)
    end
  end
end
