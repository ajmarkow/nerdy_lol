class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.column(:title, :string)
      t.column(:topic,:string, array:true)
      t.column(:content_body,:text)
      t.column(:likes, :integer)
      t.column(:topic_id, :integer, array:true)
    end
  end
end
