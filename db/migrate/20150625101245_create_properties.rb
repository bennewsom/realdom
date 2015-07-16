class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_no, null: false, limit: 32
      t.string :street_1, null: false
      t.string :street_2
      t.string :suburb
      t.string :post_code
      t.integer :state_id, null: false
      t.integer :landlord_id, null: false

      t.timestamps null: false
    end
    add_index :properties, :state_id
    add_index :properties, :landlord_id
  end
end
