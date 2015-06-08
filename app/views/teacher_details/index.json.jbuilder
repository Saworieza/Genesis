json.array!(@teacher_details) do |teacher_detail|
  json.extract! teacher_detail, :id, :employer, :employee_number, :employment_date, :full_name, :birth_date, :marital_status, :nationality, :home_address, :phone_1, :phone_2, :email, :town, :county, :education, :certifications, :subjects
  json.url teacher_detail_url(teacher_detail, format: :json)
end
