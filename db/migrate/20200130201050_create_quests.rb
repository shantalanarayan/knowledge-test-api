class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :questtext
      t.integer :topicid

      t.timestamps
    end
  end
end
