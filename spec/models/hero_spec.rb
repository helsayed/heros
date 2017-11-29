require 'rails_helper'

RSpec.describe Hero, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:real_name) }
  it { should validate_presence_of(:health) }
  it { should validate_presence_of(:armour) }
   it { should validate_presence_of(:shield) }
end
