class AddTimestampToIndexNew < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :news, null: false, default: -> { 'NOW()' }
    add_timestamps :index_news, null: false, default: -> { 'NOW()' }
    add_timestamps :products, null: false, default: -> { 'NOW()' }
  end
end
