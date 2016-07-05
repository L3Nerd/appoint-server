json.extract! @appointment, :id, :title, :description, :auth_token, :created_at, :updated_at

json.dates @appointment.dates do |date|
  json.id date.id
  json.date date.time
end
