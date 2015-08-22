class AlterAssessmentsAddUserIdColumn < ActiveRecord::Migration
  def change
  	add_column :assessments, :user_id, :integer
  	add_index :assessments, :user_id
  end
end
