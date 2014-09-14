json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :username, :password, :firstName, :lastName, :totalHours, :totalEvents, :rank, :events
  json.url volunteer_url(volunteer, format: :json)
end
