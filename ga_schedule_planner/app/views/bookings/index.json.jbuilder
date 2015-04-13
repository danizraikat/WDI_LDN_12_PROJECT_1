json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :course_id, :paid
  json.url booking_url(booking, format: :json)
end
