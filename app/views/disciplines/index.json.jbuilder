json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :incident_date, :student, :admission_number, :details, :action_taken, :attach_files, :email_subject, :email_message, :email_address
  json.url discipline_url(discipline, format: :json)
end
