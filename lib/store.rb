class Store < ActiveRecord::Base 
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :stores_apparel_validation 
  before_destroy :check_if_destroy, prepend: true

  def stores_apparel_validation  
    if  mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel ")
    end
  end 

  private 
    def check_if_destroy
      if employees.size >0
        errors.add(:base, :undestroyable)
        return false
      end
    end
 
end
