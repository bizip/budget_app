# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :entity_group
  has_many :groups, through: :entity_group
end
