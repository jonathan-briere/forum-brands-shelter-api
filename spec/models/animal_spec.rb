require 'rails_helper'

RSpec.describe Animal, type: :model do
  context 'associations' do
    it { should belong_to(:shelter) }
    it { should belong_to(:guardian).optional }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:weight) }
    it { should validate_presence_of(:animal_type) }
    it { should validate_presence_of(:joined_at) }
    it { should validate_numericality_of(:age).only_integer.is_greater_than(0) }
    it { should validate_numericality_of(:weight).is_greater_than(0.0) }
  end
end
