json.extract! @appointment_vote, :id, :created_at, :updated_at

json.name @appointment_vote.user.username

json.choices do
  json.array! @choices
end
