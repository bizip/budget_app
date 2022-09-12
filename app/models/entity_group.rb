# frozen_string_literal: true

class EntityGroup < ApplicationRecord
  belongs_to :entity
  belongs_to :group
end
