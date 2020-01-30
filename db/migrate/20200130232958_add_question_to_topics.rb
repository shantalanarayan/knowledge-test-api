class AddQuestionToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :question, :string
  end
end
