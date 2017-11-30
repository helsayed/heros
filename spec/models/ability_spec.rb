require 'rails_helper'

RSpec.describe Ability, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should belong_to(:hero) }
end
