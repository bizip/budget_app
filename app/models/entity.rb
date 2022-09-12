# frozen_string_literal: true

class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :entity_group
  has_many :entities, through: :entity_group
end
