json.extract! user, :id, :name, :dartsliveid, :rating, :cricketstats, :stats01, :registered_at, :updated_at, :created_at, :updated_at
json.url user_url(user, format: :json)