# frozen_string_literal: true

class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :entity_group
  has_many :groups, through: :entity_group

  validates :name, presence: true, length: { in: 4..100 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
