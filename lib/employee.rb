class Employee < ActiveRecord::Base 
  belongs_to :store   
  validates :first_name, presence: true 
  validates :last_name, presence: true   
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200 }
  validates :store, presence: true 
  before_save :create_password
  after_create :after_password 

  private
  def create_password
    self.password = "password"
  end
  def after_password
    self.password = "passwordAfter"
    self.save
  end 
end
