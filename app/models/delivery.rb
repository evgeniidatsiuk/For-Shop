class Delivery < ApplicationRecord
  validates :number, presence: :true, uniqueness: { case_sensitive: false }
  validates :where, presence: :true
  validates :owner, presence: :true
  validates :price, presence: :true
end
