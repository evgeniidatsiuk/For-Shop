class Repair < ApplicationRecord
  belongs_to :status

  validates :number,    presence: :true, uniqueness: { case_sensitive: false }
  validates :name,      presence: :true
  validates :where,     presence: :true
  validates :client,    presence: :true
  validates :worker,    presence: :true
  validates :end,       presence: :true
  validates :price,     presence: :true
  validates :status_id, presence: :true
end
