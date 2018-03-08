class AddParentFkToDepartment < ActiveRecord::Migration[5.0]
  def change
  	add_column :Departments, :parent_id, :integer
	add_foreign_key :Departments, :Departments, :name => 'parent_id'
  end
end
