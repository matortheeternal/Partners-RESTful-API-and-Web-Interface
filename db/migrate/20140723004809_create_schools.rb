class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :IDSchool
      t.string :NameSchool
      t.string :Principal
      t.string :Street
      t.string :City
      t.string :State
      t.string :Zip
      t.string :Phone
      t.string :Fax
      t.string :District
      t.string :Region

      t.timestamps
    end
  end
end
