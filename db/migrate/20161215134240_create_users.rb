class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, index: true, default: '', null: false
      t.string :last_name, index: true, default: '', null: false
      t.string :email
      t.string :phone
      t.string :profession, index: true, null: false
      t.string :address, index: true, null: false
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
