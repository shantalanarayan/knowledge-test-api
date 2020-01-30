class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :"quest-text", :"topic-id"
end
