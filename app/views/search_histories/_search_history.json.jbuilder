json.extract! search_history, :id, :query, :user_id, :created_at, :updated_at
json.url search_history_url(search_history, format: :json)
