json.extract! @appointment, :id, :title, :description, :created_at, :updated_at

json.dates @appointment.dates do |date|
  json.id date.id
  json.date date.time
end

json.votes @appointment.votes do |vote|
  json.id vote.id
  json.username vote.user.username
  json.votes vote.appointment_time_votes do |time|
    json.id time.id
    json.date_id time.appointment_time.id
    json.state time.state
  end
end
