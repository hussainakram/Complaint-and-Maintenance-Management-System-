class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, index: true 
      t.integer :cost
      t.belongs_to :worker, index: true, null: false
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
