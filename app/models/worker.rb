class Worker < ApplicationRecord
 has_many :complaints
 has_many  :items
end
