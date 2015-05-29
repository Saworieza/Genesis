json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :form, :stream, :class_teacher
  json.url classroom_url(classroom, format: :json)
end
