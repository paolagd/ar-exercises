class Store < ActiveRecord::Base 
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :stores_apparel_validation
  has_many :employees

  def stores_apparel_validation  
    if  mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel ")
    end
  end

end
