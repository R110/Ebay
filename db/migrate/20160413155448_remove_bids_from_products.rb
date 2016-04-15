class RemoveBidsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :bids, :text
  end
end
