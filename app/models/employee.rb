class Employee < ActiveRecord::Base
  attr_accessible :manager_id, :name, :email, :phone
  validates :name, :email, :phone, presence: true
  validates :email, :phone, uniqueness: true
  
  has_many(
  :staff,
  :class_name => "Employee",
  :foreign_key => :manager_id,
  :primary_key => :id
  )
  
  belongs_to(
  :manager,
  :class_name => "Employee",
  :foreign_key => :manager_id,
  :primary_key => :id
  )
end
