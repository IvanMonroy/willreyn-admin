class Product < ActiveRecord::Migration[5.2]
  def up
      create_table :productss do |t|
        t.string :name, null: false
        t.float :price, null: false
        t.float :quantity, null: false


        t.timestamps
      end
  end
  def down
drop_table :products
  end
end
