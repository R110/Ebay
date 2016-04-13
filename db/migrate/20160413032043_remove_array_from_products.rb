class RemoveArrayFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :bids, :array
  end
end
