class AddOrgToOrganization < ActiveRecord::Migration
  def change
  	add_column :organizations, :company, :string
  end
end
