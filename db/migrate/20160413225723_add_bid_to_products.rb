class AddBidToProducts < ActiveRecord::Migration
  def change
    add_column :products, :bid, :integer
  end
end
