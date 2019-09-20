class School < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates_uniqueness_of :name, :case_sensitive => true
  validates :address, uniqueness: true, presence: true
  validates :principal, uniqueness: true, presence: true
  validates :capacity, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 52000}, presence: true
  validates :private_school, uniqueness: true, presence: true


 
  # Associations
has_many :students, dependent: :destroy

end

