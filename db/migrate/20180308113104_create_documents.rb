class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :department_id, null: false
      t.integer :document_id_in_department, null: false
      t.string :document_code, null: false, unique: true
      t.text :title, null: false
      t.text :key_words
      t.text :description
      t.text :text_content
      t.string :author
      t.integer :user_id, null: false
      t.date :issue_date

      t.timestamps
    end

    add_index :documents, [:department_id, :document_id_in_department], unique: true
    add_foreign_key :documents, :departments, :name => 'department_id'
    add_foreign_key :documents, :users, :name => 'user_id'
  end
end
