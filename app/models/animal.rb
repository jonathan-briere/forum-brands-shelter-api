class Animal < ApplicationRecord
  belongs_to :shelter

  validates :name, :age, :breed, :weight, :animal_type, :joined_at, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :weight, numericality: { greater_than: 0.0 }

  enum animal_type: { cat: 0, dog: 1 }
end
