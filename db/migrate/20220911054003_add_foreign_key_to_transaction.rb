class AddForeignKeyToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :transactions, :users, on_delete: :cascade, column: "author_id"
  end
end
