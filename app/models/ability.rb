class Ability < ApplicationRecord
  # validations
  validates :name, :description, :is_ultimate, presence: true

  # association
  belongs_to :hero
end
