class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, null: false, limit: 512
      t.integer :country_id, null: false

      t.timestamps null: false
    end
  end
end
