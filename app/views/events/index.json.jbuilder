json.array!(@events) do |event|
  json.extract! event, :id, :name, :event_date, :event_time, :description
  json.url event_url(event, format: :json)
end
