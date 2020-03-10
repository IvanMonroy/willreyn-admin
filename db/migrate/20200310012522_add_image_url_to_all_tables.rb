class AddImageUrlToAllTables < ActiveRecord::Migration[5.2]
  def up
    add_column :news, :img_url, :string
    add_column :index_news, :img_url_one, :string
    add_column :index_news, :img_url_two, :string
    add_column :index_news, :img_url_three, :string
    add_column :works, :img_url_one, :string
    add_column :works, :img_url_two, :string
    add_column :works, :img_url_three, :string
    add_column :works, :img_url_fourth, :string
    add_column :works, :img_url_fifth, :string
    add_column :works, :img_url_sixth, :string
  end
  def down
    remove_column :news, :img_url
    remove_column :index_news, :img_url_one
    remove_column :index_news, :img_url_two
    remove_column :index_news, :img_url_three
    remove_column :works, :img_url_one
    remove_column :works, :img_url_two
    remove_column :works, :img_url_three
    remove_column :works, :img_url_fourth
    remove_column :works, :img_url_fifth
    remove_column :works, :img_url_sixth
  end
end
