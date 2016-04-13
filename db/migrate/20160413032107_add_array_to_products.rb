class AddArrayToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bids, :Array
  end
end
