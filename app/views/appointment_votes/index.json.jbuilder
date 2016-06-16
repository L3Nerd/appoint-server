json.array!(@appointment_votes) do |appointment_vote|
  json.extract! appointment_vote, :id, :state, :appointment_id, :user_id
  json.url appointment_vote_url(appointment_vote, format: :json)
end
