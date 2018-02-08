require 'faker'
require 'populator'

namespace :db  do
  desc "Create some fake contacts to generate real SFDC Ids"
  task :fake_contacts => :environment do
    print "How many fake Contacts do you want? "
    num_contacts = $stdin.gets.to_i


    # create the specified accounts
    Contact.populate num_contacts do |con|
      con.name = Faker::Name.name
      con.position = 'Health Educator'
      con.status = 'current'
      con.region = 'New York'
      con.program_type = 'RCM'
    end

    print "#{num_contacts} created.\n"
  end
end
