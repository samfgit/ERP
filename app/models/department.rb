class Department < ApplicationRecord
	belongs_to :Department, foreign_key: "parent_id"
  	has_many :Departments, foreign_key: "parent_id"
end
