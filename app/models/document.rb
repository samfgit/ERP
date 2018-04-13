class Document < ApplicationRecord
	belongs_to :User, foreign_key: "user_id"
	belongs_to :Department, foreign_key: "department_id"
end
