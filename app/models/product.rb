class Product < ApplicationRecord
  belongs_to :user
  validates :title, length: { in: 1..10}
  validates :title, :body, presence: true  
end