class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :staff_no, null: false, limit: 32
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
