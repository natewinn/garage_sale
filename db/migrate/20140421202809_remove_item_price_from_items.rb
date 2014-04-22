class RemoveItemPriceFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :item_price, :decimal
  end
end
