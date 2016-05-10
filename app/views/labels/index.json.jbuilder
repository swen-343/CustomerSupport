json.array!(@labels) do |label|
  json.extract! label, :id, :ticket_id, :customer_id
  json.url label_url(label, format: :json)
end
