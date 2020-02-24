class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.string :category
      t.text :description
      t.text :first_image
      t.string :first_header
      t.text :first_description
      t.text :second_image
      t.string :second_header
      t.text :second_description
      t.text :third_image
      t.string :third_header
      t.text :third_description
      t.text :fourth_image
      t.string :fourth_header
      t.text :fourth_description
      t.text :fifth_image
      t.string :fifth_header
      t.text :fifth_description
      t.text :sixth_image
      t.string :sixth_header
      t.text :sixth_description
    end
  end
end
