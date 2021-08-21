class Employee < ActiveRecord::Base

  belongs_to :store
  validates "store_id",    presence: true, numericality: { only_integer: true }
  validates "first_name",  presence: true
  validates "last_name",   presence: true
  validates "hourly_rate", presence: true, numericality: true, inclusion: { in: 40..200 }

end
