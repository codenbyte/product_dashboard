class AddPricingToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :pricing, :float
  end
end
