json.extract! @appointment_vote, :id, :auth_token, :created_at, :updated_at

json.choices do
  json.array! @choices
end
