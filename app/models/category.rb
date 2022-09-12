class Category < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: :user_id
    has_many :category_transactions
    has_many :transactions, through: :category_transactions
end
