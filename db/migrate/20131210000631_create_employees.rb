class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :manager_id
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone, null: false
      t.timestamps
    end
    add_index(:employees, :email, unique: true)
    add_index(:employees, :phone, unique: true)
  end
end
