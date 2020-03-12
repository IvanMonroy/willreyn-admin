class AddColumnsOnTables < ActiveRecord::Migration[5.2]
  def up
    add_column :index_news, :autor, :string
    add_column :index_news, :note_1, :string
    add_column :index_news, :note_2, :string
  end
end
