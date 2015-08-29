class AdminsController < ApplicationController
	before_action :authenticate_admin!, :only => [:show, :create]

	#after_create :do_something

	def show
		@admin = Admin.find(params[:id])
	end

end
