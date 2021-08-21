class Store < ActiveRecord::Base
  has_many :employees
  validates "name",           presence: true, length: { minimum: 3 }
  validates "annual_revenue", presence: true, numericality: { greater_than_or_equal_to: 0 }
  validate :has_apparel

  private

  def has_apparel
    if !mens_apparel.present? && !womens_apparel.present? then
      errors.add(:store, "must have apparel")
    end
  end
end
