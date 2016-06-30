json.extract! @appointment_vote, :id, User.find_by_id(:user_id).username, :auth_token, :created_at, :updated_at
