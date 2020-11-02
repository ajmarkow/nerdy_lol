class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :threads, foreign_key:true
      t.column(:topic, :string, array: true)
      t.column(:content_body, :text)
      t.column(:likes, :integer)
    end
  end
end
