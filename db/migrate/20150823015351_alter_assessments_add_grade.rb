class AlterAssessmentsAddGrade < ActiveRecord::Migration
  def change
  	add_column :assessments, :grade, :integer
  end
end
