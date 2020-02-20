class CreateIndexNews < ActiveRecord::Migration[5.2]
  def change
    create_table :index_news do |t|
      t.string :title
      t.text :bodyone
      t.text :subtitle
      t.text :bodytwho
      t.string :subtitletwo
      t.text :bodythree
    end
  end
end
