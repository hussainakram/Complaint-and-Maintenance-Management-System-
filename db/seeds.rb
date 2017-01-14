# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(first_name: 'Hussain', last_name: 'Akram', email: 'hussain.akram128@gmail.com',password:'password',password_confirmation: 'password' , phone: '03217697376', profession: 'student', address: 'P-31 Gulshan colony')

User.create!(first_name: 'Ali', last_name: 'Muazzam', email: 'alimuazzam123@gmail.com',password:'password',password_confirmation: 'password', phone: '03218555755', profession: 'student', address: 'A Block EME colony')

User.create!(first_name: 'Shoaib', last_name: 'Jafar', email: 'shoaib@uet.edu.pk',password:'password',password_confirmation: 'password', phone: '03004556936', profession: 'professor', address: 'C Block staff colony')

User.create!(first_name: 'Sarfraz', last_name: 'Ameen', email: 'Sarfraz@yahoo.com',password:'password',password_confirmation: 'password', phone: '03007892514', profession: 'servant', address: 'H # 91, B-Block')

Worker.create!(full_name: 'Noor Ahmed', cnic: '33400-157893547-1', phone: '03125582128')

Worker.create!(full_name: 'Noor Ahmed', cnic: '33400-157893547-1', phone: '03125582128')

 Worker.create!(full_name: 'Nabeel Hassan', cnic: '33250-15164547-1', phone: '03065518528')

Worker.create!(full_name: 'Zeeshan Rao', cnic: '33400-1517778-7', phone: '03215882136')

Sdo.create!(name: 'Eng. Shoaib', cnic: '33100-41178739-1', email: 'eng.shoaib@uet.edu.pk')

Sdo.create!(name: 'Eng. Amjad', cnic: '33104-477178739-1', email: 'eng.amjad@uet.edu.pk')

Complaint.create!(title: 'Pump misfuntioned', category: 'EE',status:'completed', user_id: 1, sdo_id: 1, worker_id: 1)

Complaint.create!(title: 'shelf repairing', category: 'Civil', status: 'undergoing', user_id: 2, sdo_id: 2, worker_id: 2)

Complaint.create!(title: 'shelf repairing', category: 'Civil', status: 'Rejected', user_id: 1, sdo_id: 1, worker_id: 1)


Complaint.create!(title: 're-painted', category: 'Civil', user_id: 1, sdo_id: 1, worker_id: 1)

Item.create!(name: 'Laal Pump', cost: 15000, worker_id:1)

Item.create!(name: 'cement packet', cost: 4500, worker_id:2)

Item.create!(name: '4 paint gallons', cost: 7000, worker_id:1)