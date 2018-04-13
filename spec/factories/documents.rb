FactoryGirl.define do
  factory :document do
    department_id ""
    document_id_in_department ""
    document_code "MyString"
    title "MyText"
    key_words "MyText"
    description "MyText"
    text_content "MyText"
    author "MyString"
    user_id ""
    issue_date ""
  end
end
