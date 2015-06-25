class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_no, null: false, limit: 32

      t.timestamps null: false
    end
  end
end
