class Complaint < ApplicationRecord
	belongs_to :sdo, optional: true
	belongs_to :worker, optional: true
	belongs_to :user
end
