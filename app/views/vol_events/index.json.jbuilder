json.array!(@vol_events) do |vol_event|
  json.extract! vol_event, :id, :IDEvent, :IDVolunteer, :DateEvent, :EventType, :Project, :Hours, :Feedback, :HoursTotal, :NameSchool, :Status, :NameTeacher, :Time, :Instructions, :DatePassportCreated, :DatePassportDue, :IDRequest, :DateCreated, :DateModified, :AccountCreated, :AccountModified, :AccountPassportCreated, :ScheduleOngoing, :NameVolunteer, :EmailTeacher, :EmailVolunteer, :ProjectAndDate, :FeedbackVolunteer, :FeedbackTeacher, :AcademicYear
  json.url vol_event_url(vol_event, format: :json)
end
