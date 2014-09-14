class School < ActiveRecord::Base
  include Filterable

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |school|
        csv << school.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      School.create! row.to_hash
    end
  end

end
