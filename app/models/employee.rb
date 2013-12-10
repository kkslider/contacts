class Employee < ActiveRecord::Base
  attr_accessible :manager_id, :name, :email, :phone
  validates :name, :email, :phone, presence: true
  validates :email, :phone, uniqueness: true
end
