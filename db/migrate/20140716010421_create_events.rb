class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventID
      t.string :date
      t.string :time
      t.string :location
      t.string :GPSLocation
      t.boolean :completionStatus
      t.string :description
      t.string :startTime
      t.string :endTime
      t.integer :totalTime
      t.string :survey

      t.timestamps
    end
  end
end
