class AddDetailsColumnToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :details, :string
  end
end
