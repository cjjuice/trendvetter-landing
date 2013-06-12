class Lead < ActiveRecord::Base
  attr_accessible :company, :email, :name

  validates_presence_of :name, :email, message: "can't be empty"
  validates_uniqueness_of :email

  validates :email, email: true
end
