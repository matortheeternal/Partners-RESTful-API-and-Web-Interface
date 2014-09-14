class CreateVolEvents < ActiveRecord::Migration
  def change
    create_table :vol_events do |t|
      t.integer :IDEvent
      t.integer :IDVolunteer
      t.string :DateEvent
      t.string :EventType
      t.string :Project
      t.float :Hours
      t.string :Feedback
      t.float :HoursTotal
      t.string :NameSchool
      t.string :Status
      t.string :NameTeacher
      t.string :Time
      t.string :Instructions
      t.string :DatePassportCreated
      t.string :DatePassportDue
      t.string :IDRequest
      t.string :DateCreated
      t.string :DateModified
      t.string :AccountCreated
      t.string :AccountModified
      t.string :AccountPassportCreated
      t.string :ScheduleOngoing
      t.string :NameVolunteer
      t.string :EmailTeacher
      t.string :EmailVolunteer
      t.string :ProjectAndDate
      t.string :FeedbackVolunteer
      t.string :FeedbackTeacher
      t.string :AcademicYear

      t.timestamps
    end
  end
end
