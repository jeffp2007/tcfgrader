class AlterAdminsAddOrganizationIdColumn < ActiveRecord::Migration
  def change
  	add_column :admins, :organization_id, :integer
  	add_index :admins, :organization_id
  end
end
