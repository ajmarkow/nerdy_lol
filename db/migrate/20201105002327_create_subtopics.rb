class CreateSubtopics < ActiveRecord::Migration[5.2]
  def change
    create_table :subtopics do |t|
      t.string :name
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
