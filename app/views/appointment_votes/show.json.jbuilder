json.extract! @appointment_vote, :id, :created_at, :updated_at

json.choices do
  json.array! @choices
end
