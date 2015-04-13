json.array!(@courses) do |course|
  json.extract! course, :id, :course_type_id, :classroom_id, :name, :start_date, :end_date, :description, :capacity
  json.url course_url(course, format: :json)
end
