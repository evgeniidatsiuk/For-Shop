class Delivery < ApplicationRecord
  belongs_to :status

  validates :number,    presence: :true, uniqueness: { case_sensitive: false }
  validates :where,     presence: :true
  validates :client,    presence: :true
  validates :price,     presence: :true
  validates :end,       presence: :true
  validates :status_id, presence: :true
end
