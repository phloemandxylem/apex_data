class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :position
      t.string :region
      t.string :status
      t.string :program_type

      t.timestamps
    end
  end
end
