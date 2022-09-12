class Transaction < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: :author_id
    has_many :category_transactions
    has_many :categories, through: :category_transactions
end
