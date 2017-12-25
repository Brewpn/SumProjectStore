class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :body
      t.string :category_id
      t.string :author
      t.float :price
      t.integer :in_stock
    end
  end
end
