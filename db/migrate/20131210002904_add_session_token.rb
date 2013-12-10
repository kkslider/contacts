class AddSessionToken < ActiveRecord::Migration
  def change
    add_column(:employees, :session_token, :string)
  end
end
