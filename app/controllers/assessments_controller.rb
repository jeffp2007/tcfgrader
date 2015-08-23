class AssessmentsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@assessments = Assessment.all 
	end

	def new
		@assessment = Assessment.new
	end

	def create
		current_user.assessments.create(assessment_params)
		@assessment = Assessment.last
		@assessment.update_attributes(:grade => @assessment.question1 + @assessment.question2 + @assessment.question3 + @assessment.question4 + @assessment.question5 + @assessment.question6 + @assessment.question7 + @assessment.question8 + @assessment.question9 + @assessment.question10)
		redirect_to root_path
	end

	private

	def assessment_params
		params.require(:assessment).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8, :question9, :question10, :grade)
	end

end
