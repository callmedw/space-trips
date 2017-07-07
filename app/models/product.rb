class Product < ActiveRecord::Base
  has_many :reviews
  
  validates :name, :image, :cost, :description, presence: true
  validates :cost, numericality: true
end
