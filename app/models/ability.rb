class Ability < ApplicationRecord
  # validations
  validates :name, :description, presence: true
  validates_inclusion_of :is_ultimate, in: [true, false]

  # association
  belongs_to :hero
end
