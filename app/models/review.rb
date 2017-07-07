class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :content, :rating, presence: true
  validates :content, length: { in: 10..250 }
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
end
