require 'rails_helper'

RSpec.describe Shelter, type: :model do
  context 'validations' do
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:address) }
  end
end
