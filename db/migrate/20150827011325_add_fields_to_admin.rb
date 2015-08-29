class AddFieldsToAdmin < ActiveRecord::Migration
  def change
  	add_column :admins, :first_name, :string
  	add_column :admins, :last_name, :string
  	add_column :admins, :job_title, :string
  	add_column :admins, :company, :string
  	add_column :admins, :phone_number, :string
  end
end
