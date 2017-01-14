class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :full_name,	index: true, null: false
      t.string :cnic
      t.string :phone
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
