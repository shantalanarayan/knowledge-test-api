class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :quest-text
      t.int :topic-id

      t.timestamps
    end
  end
end
