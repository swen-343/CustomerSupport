json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :status_id, :customer_id, :closed_at
  json.url ticket_url(ticket, format: :json)
end
