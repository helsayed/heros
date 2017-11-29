class Hero < ApplicationRecord
  # validations
  validates :name, :real_name, :health, :armour, :shield, presence: true
end
