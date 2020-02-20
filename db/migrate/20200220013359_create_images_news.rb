class CreateImagesNews < ActiveRecord::Migration[5.2]
  def change
    create_table :images_news do |t|
      t.text :imageone
      t.text :imagetwo
      t.text :imagethree
      t.integer :index_new_id
    end
  end
end
