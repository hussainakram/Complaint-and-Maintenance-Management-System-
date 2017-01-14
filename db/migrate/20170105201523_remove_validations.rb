class RemoveValidations < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :complaints, :sdo_id, from: true, to: false
  	change_column_null :complaints, :worker_id, from: true, to: false
  end
end
