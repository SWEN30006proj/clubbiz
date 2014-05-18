json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :code, :event_id, :member_id, :ticket_type, :ticket_quantity
  json.url reservation_url(reservation, format: :json)
end
