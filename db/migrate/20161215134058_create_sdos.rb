class CreateSdos < ActiveRecord::Migration[5.0]
  def change
    create_table :sdos do |t|
      t.string :name, index: true
      t.string :cnic  
      t.string :email
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
