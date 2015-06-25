class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :agent_id, null: false
      t.integer :property_id, null: false
      t.date :starts, null: false
      t.date :expires, null: false

      t.timestamps null: false
    end
    add_index :leases, :agent_id
    add_index :leases, :property_id
  end
end
