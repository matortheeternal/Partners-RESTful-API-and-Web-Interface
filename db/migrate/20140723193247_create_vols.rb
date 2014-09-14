class CreateVols < ActiveRecord::Migration
  def change
    create_table :vols do |t|
      t.integer :IDVolunteer
      t.string :Prefix
      t.string :NameFirst
      t.string :NamePreferred
      t.string :NameMiddle
      t.string :NameLast
      t.string :Suffix
      t.string :Title
      t.string :Organization
      t.string :Street1
      t.string :City1
      t.string :State1
      t.string :ZipCode1
      t.string :Phone1
      t.string :PhoneCell
      t.string :Fax1
      t.string :Email1
      t.string :Website
      t.string :Gender
      t.string :BioEthnicity
      t.string :BioLanguage
      t.string :Coordinator
      t.string :Newsletter
      t.string :RetireeEmploymentHistory
      t.string :VolCommitment
      t.string :StudentSchool
      t.string :StudentMajor
      t.string :StudentGradYear
      t.string :VolMentor
      t.string :VolGuestSpeaker
      t.string :VolMockInterviews
      t.string :VolFieldTrip
      t.string :VolJobShadow
      t.string :VolComputer
      t.string :VolArts
      t.string :VolGarden
      t.string :VolTutor
      t.string :VolCareerDay
      t.string :VolInternships
      t.string :VolSpecialEvents
      t.string :VolSports
      t.string :VolLibrary
      t.string :VolFacilities
      t.string :VolJoinCommittee
      t.string :VolReading
      t.string :VolGroupProjects
      t.string :VolMusic
      t.string :VolLunchtime
      t.string :VolOffice

      t.timestamps
    end
  end
end
