json.array!(@students) do |student|
  json.extract! student, :student_name, :obtain_courses, :contact_information
  json.url student_url(student, format: :json)
end
