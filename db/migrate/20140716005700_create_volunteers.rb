class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :username
      t.string :password
      t.string :firstName
      t.string :lastName
      t.float :totalHours
      t.integer :totalEvents
      t.string :rank
      t.string :events

      t.timestamps
    end
  end
end
