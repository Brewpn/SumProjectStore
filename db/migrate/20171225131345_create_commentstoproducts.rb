class CreateCommentstoproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :commentstoproducts do |t|
      t.string :user_id
      t.string :product_id
      t.string :text
    end
  end
end
