class AddTotalCostColumnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :total_cost, :integer
  end
end
