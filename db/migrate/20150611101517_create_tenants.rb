class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :gender
      t.date :dob
      t.integer :no_of_dependents
      t.string :occupation
      t.float :annual_income

      t.timestamps null: false
    end
  end
end
