# frozen_string_literal: true

class TopicSerializer < ActiveModel::Serializer
  attributes :id, :title, :question, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
