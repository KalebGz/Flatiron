json.extract! student, :id, :name, :major, :age, :instructor_id, :created_at, :updated_at
json.url student_url(student, format: :json)
