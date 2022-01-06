class Entity < ApplicationRecord
  has_and_belongs_to_many :groups
  belongs_to :user

  validates :name, :amount, presence: true
end
