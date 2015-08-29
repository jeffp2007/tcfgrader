class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|

    	t.integer :user_id
    	t.integer :admin_id

      t.timestamps
    end

    add_index :organizations, [:user_id, :admin_id]
    add_index :organizations, :admin_id
  end
end
