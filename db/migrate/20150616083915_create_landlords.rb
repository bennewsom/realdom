class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :dob, null: false

      t.timestamps null: false
    end
  end
end
