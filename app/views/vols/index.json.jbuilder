json.array!(@vols) do |vol|
  json.extract! vol, :id, :IDVolunteer, :Prefix, :NameFirst, :NamePreferred, :NameMiddle, :NameLast, :Suffix, :Title, :Organization, :Street1, :City1, :State1, :ZipCode1, :Phone1, :PhoneCell, :Fax1, :Email1, :Website, :Gender, :BioEthnicity, :BioLanguage, :Coordinator, :Newsletter, :RetireeEmploymentHistory, :VolCommitment, :StudentSchool, :StudentMajor, :StudentGradYear, :VolMentor, :VolGuestSpeaker, :VolMockInterviews, :VolFieldTrip, :VolJobShadow, :VolComputer, :VolArts, :VolGarden, :VolTutor, :VolCareerDay, :VolInternships, :VolSpecialEvents, :VolSports, :VolLibrary, :VolFacilities, :VolJoinCommittee, :VolReading, :VolGroupProjects, :VolMusic, :VolLunchtime, :VolOffice
  json.url vol_url(vol, format: :json)
end
