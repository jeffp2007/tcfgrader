class Organization < ActiveRecord::Base
	has_many :users
	has_one :admin

	after_create :update_admin

  	def update_admin
  		a = Admin.find(self.admin_id)
  		a.organization_id = self.id
  		a.save
  	end
end
