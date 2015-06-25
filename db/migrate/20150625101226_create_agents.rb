class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :staff_no, null: false, limit: 32

      t.timestamps null: false
    end
  end
end
