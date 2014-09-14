json.array!(@events) do |event|
  json.extract! event, :id, :eventID, :date, :time, :location, :GPSLocation, :completionStatus, :description, :startTime, :endTime, :totalTime, :survey
  json.url event_url(event, format: :json)
end
