class Assessment < ActiveRecord::Base
	belongs_to :user

	validates :question1, :presence => true
	validates :question2, :presence => true
	validates :question3, :presence => true
	validates :question4, :presence => true
	validates :question5, :presence => true
	validates :question6, :presence => true
	validates :question7, :presence => true
	validates :question8, :presence => true
	validates :question9, :presence => true
	validates :question10, :presence => true
end
