class AddAnswerToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :answer, :string
  end
end
