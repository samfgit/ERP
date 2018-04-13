class Department < ApplicationRecord
	belongs_to :Department, foreign_key: "parent_id"
  	has_many :Departments, foreign_key: "parent_id"
	has_many :Documents, foreign_key: "department_id"

	def new_doc_code
		# dep = Department.where(:id => department_id).first
		new_code = self.Documents.select(:document_id_in_department)
								.order(document_id_in_department: :asc)
								.last
		if new_code.present? && (new_code.document_id_in_department.is_a?(Integer))
			new_code.document_id_in_department + 1
		else
			1
		end
	end
end
