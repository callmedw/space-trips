class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :image, :presence => true
  validates :cost, :presence => true
  validates :description, :presence => true
end
