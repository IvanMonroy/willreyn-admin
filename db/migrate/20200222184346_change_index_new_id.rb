class ChangeIndexNewId < ActiveRecord::Migration[5.2]
  def up
    rename_column :images_news, :index_news_id, :index_new_id
  end
  def down
    rename_column :images_news, :index_news_id, :index_new_id
  end
end
