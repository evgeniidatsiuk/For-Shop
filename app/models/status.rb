class Status < ApplicationRecord
  has_many :repairs
  has_many :deliveries
  validates :name, presence: :true
end
