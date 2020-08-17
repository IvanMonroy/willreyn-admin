class RenameImageProductToImageurl2 < ActiveRecord::Migration[5.2]
  def up
    rename_column :products, :image, :imageurltwo

  end
end
