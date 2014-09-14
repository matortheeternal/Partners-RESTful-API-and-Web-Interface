class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :usertype
      t.integer :volunteer

      t.timestamps
    end
  end
end
