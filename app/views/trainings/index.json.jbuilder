json.array!(@trainings) do |training|
  json.extract! training, :id, :course_name, :topic, :expositor, :start_date, :duration, :attendance_id
  json.url training_url(training, format: :json)
end
