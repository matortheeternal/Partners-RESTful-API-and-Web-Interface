json.array!(@schools) do |school|
  json.extract! school, :id, :IDSchool, :NameSchool, :Principal, :Street, :City, :State, :Zip, :Phone, :Fax, :District, :Region
  json.url school_url(school, format: :json)
end
