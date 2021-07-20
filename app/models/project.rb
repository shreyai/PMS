class Project < ApplicationRecord
  has_and_belongs_to_many :developers

  validates :name, presence: true
end
