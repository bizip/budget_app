class CreateGroups < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.timestamps
    end
  end
end
