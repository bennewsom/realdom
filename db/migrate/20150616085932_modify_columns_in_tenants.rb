class ModifyColumnsInTenants < ActiveRecord::Migration
  def change
    change_column_null(:tenants, :name, false)
    change_column_null(:tenants, :dob, false)
    change_column_null(:tenants, :gender, false)
  end
end
