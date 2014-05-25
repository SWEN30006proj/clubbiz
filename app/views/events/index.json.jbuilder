json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_time, :finish_time, :venue, :event_type, :event_url, :image_urls, :max_num_tickets, :ticket_price, :ticket_start_date_time, :ticket_end_date_time, :ticket_purchase_pickup_information, :societies_shared_with
  json.url event_url(event, format: :json)
end
