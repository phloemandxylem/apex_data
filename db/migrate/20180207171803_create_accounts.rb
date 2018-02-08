class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :salesforce_id
      t.string :region

      t.timestamps
    end
  end
end
