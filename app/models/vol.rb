class Vol < ActiveRecord::Base
  include Filterable
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |vol|
        csv << vol.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vol.create! row.to_hash
    end
  end
  
end
