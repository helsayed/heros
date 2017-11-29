class Hero < ApplicationRecord
  # validations
  validates :name, :real_name, :health, :armour, :shield, presence: true

  # association
  has_many :abilities
end
