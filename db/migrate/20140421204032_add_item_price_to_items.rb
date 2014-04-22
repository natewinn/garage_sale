class AddItemPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_price, :decimal
  end
end
