require 'rails_helper'

RSpec.describe Shelter, type: :model do
  context 'associations' do
    it { should have_many(:animals).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:address) }
  end
end
