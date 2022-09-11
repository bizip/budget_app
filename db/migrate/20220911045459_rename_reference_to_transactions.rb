class RenameReferenceToTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :user_id, :author_id
  end
end
