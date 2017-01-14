class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.string :title, null: false
      t.string :category, index: true, null: false
      t.belongs_to :user, index: true
      t.belongs_to :sdo, index: true
      t.belongs_to :worker, index: true
      
      t.timestamps
    end
  end
end
