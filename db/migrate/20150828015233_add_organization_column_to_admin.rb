class AddOrganizationColumnToAdmin < ActiveRecord::Migration
  def change
  	add_column :admins, :organization, :string
  end
end
