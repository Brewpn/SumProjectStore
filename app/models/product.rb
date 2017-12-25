class Product < ApplicationRecord
  validates :title, length: { in: 1..10}
  validates :title, :body, presence: true  
end