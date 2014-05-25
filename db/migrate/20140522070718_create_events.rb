class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.time :start_time
      t.time :finish_time
      t.string :venue
      t.string :event_type
      t.string :event_url
      t.string :image_urls
      t.integer :max_num_tickets
      t.string :ticket_price
      t.datetime :ticket_start_date_time
      t.datetime :ticket_end_date_time
      t.string :ticket_purchase_pickup_information
      t.string :societies_shared_with

      t.timestamps
    end
  end
end
