class AddReferenceToGroups < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_reference :entities, :author, foreign_key: { to_table: :users }, index: true
    add_reference :groups, :author, foreign_key: { to_table: :users }, index: true
    add_reference :entity_groups, :entity, foreign_key: { to_table: :entities }, index: true
    add_reference :entity_groups, :group, foreign_key: { to_table: :groups }, index: true
  end
end
