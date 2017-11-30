class Hero < ApplicationRecord
  # validations
  validates :name, :real_name, :health, :armour, :shield, presence: true

  # association
  has_many :abilities
  accepts_nested_attributes_for :abilities
end
