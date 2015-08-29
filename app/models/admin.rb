class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :organization

  #accepts_nested_attributes_for :organization

  after_create :create_org

  def create_org
  	Organization.create!(:organization => self.company, :admin_id => self.id)
  end
end
