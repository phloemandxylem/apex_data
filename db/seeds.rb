require 'faker'

500.times do
  Account.create(
    name: FAKER::Name.name
    salesforce_id: '999999'
    region: 'New York'
  )
end

500.times do
  Contact.create(
    name: FAKER::Name.name
    position: 'Health Educator'
    region: 'New York'
    status: 'current'
    program_type: 'RCM'
  )
end

puts "Seed finished"
