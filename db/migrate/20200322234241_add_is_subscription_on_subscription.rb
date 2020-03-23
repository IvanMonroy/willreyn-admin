class AddIsSubscriptionOnSubscription < ActiveRecord::Migration[5.2]
  def up
    add_column :subscribers, :is_subscriber, :string
  end
end
