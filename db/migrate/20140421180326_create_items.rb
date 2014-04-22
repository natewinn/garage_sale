class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.decimal :item_price
      t.integer :item_age
      t.boolean :item_sold, :default => false
    end
  end
end
