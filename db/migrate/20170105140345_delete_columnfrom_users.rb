class DeleteColumnfromUsers < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :users, :first_name, from: '', to: ''
  	change_column_default :users, :last_name, from: '', to: ''
  	change_column_default :users, :profession, from: '', to: ''
  	change_column_default :users, :address, from: '', to: ''
  end	
end
