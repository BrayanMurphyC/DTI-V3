json.extract! event, :id, :title, :body, :start, :view_count, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
