class AssessmentsController < ApplicationController
	def index
		@assessments = Assessment.all 
	end

	def new
		@assessment = Assessment.new
	end

	def create
		Assessment.create(assessment_params)
		redirect_to root_path
	end

	private

	def assessment_params
		params.require(:assessment).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8, :question9, :question 10)
	end

end
