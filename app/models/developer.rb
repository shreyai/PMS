class Developer < ApplicationRecord
  has_and_belongs_to_many :projects

  validates :name, :email, presence: true
  validates_uniqueness_of :email
end
