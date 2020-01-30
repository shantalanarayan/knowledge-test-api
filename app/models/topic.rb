# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :user
  validates :title, :user, presence: true
end
