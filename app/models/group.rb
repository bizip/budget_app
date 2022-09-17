class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :entity_group
  has_many :entities, through: :entity_group

  validates :name, presence: true, length: { in: 4..100 }
  validates :icon, presence: true, length: { in: 4..800 }
end
