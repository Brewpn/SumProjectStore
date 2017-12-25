class CreateCommetstoproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :commetstoproducts do |t|
      t.string :user_id
      t.string :product_id
      t.string :comment
    end
  end
end
