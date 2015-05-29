json.array!(@students) do |student|
  json.extract! student, :id, :full_name, :birth_date, :gender, :nationality, :form, :stream, :classteacher, :address, :phone1, :phone2, :email, :town, :county
  json.url student_url(student, format: :json)
end
