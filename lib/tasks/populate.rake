require 'faker'
require 'populator'

namespace :db  do
  desc "Create some fake accounts to generate real SFDC Ids"
  task :fake_accounts => :environment do
    print "How many fake Accounts do you want? "
    num_accounts = $stdin.gets.to_i

    # create the specified accounts
    Account.populate num_accounts do |acct|
      acct.name = Faker::Company.name
    end

    print "#{num_accounts} created.\n"
  end

end
