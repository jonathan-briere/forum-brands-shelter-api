require 'rails_helper'

RSpec.describe Guardian, type: :model do
  context 'associations' do
    it { should have_many(:animals) }
  end

  context 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:address) }
  end
end
