class ChangeIndexNewId < ActiveRecord::Migration[5.2]
  def up
    rename_column :images_news, :index_new_id, :index_news_id
  end
  def down
    rename_column :images_news, :index_news_id, :index_new_id
  end
end
