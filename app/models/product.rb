class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :image, :cost, :description, :star, :agency, :craft, :distance, presence: true
  validates :cost, numericality: true
end
