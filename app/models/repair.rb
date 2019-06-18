class Repair < ApplicationRecord
  validates :number, presence: :true, uniqueness: { case_sensitive: false }
  validates :name,   presence: :true
  validates :where,  presence: :true
  validates :client, presence: :true
  validates :worker, presence: :true
  validates :end,    presence: :true
  validates :price,  presence: :true
end
