class CreateQues < ActiveRecord::Migration[5.2]
  def change
    create_table :ques do |t|
      t.string :quest
      t.integer :topicid

      t.timestamps
    end
  end
end
