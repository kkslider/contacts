class Employee < ActiveRecord::Base
  attr_accessible :manager_id, :name, :email, :phone, :session_token
  validates :name, :email, :phone, presence: true
  validates :email, :phone, uniqueness: true
  
  before_validation(on: :create) do
    self.reset_session_token if !self.session_token
  end
  
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
  
  def is_manager?
    self.manager.nil?
  end
  
  def self.generate_token
    SecureRandom.urlsafe_base64(16)
  end
  
  def reset_session_token
    self.session_token = self.class.generate_token
  end
  
  def reset_session_token!
    self.session_token = self.class.generate_token
    self.save!
  end
end
