class CreateCommentstoproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :commentstoproducts do |t|
      t.string :text
      t.integer :user_id
      t.integer :post_id
    end
  end
end
