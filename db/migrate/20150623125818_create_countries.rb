class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false, limit: 512

      t.timestamps null: false
    end
  end
end
