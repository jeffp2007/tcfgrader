class AddOrganizationColumnToOrganizations < ActiveRecord::Migration
  def change
  	add_column :organizations, :organization, :string
  end
end
