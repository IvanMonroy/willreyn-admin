class CreateOurWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :our_works do |t|
      t.string :category
      t.string :name
      t.text :situation
      t.text :solution
      t.text :image_one
      t.text :image_two
      t.text :image_three
      t.text :image_fourth
      t.text :image_fifth

      t.timestamps
    end
  end
end
