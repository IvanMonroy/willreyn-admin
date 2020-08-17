class ChangeingUrlToText < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :imgurl, :text
  end
end
