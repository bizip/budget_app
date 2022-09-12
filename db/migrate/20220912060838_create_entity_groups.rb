# frozen_string_literal: true

class CreateEntityGroups < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :entity_groups, &:timestamps
  end
end
