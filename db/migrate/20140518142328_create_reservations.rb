class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :code
      t.integer :event_id
      t.integer :member_id
      t.integer :ticket_type
      t.integer :ticket_quantity

      t.timestamps
    end
  end
end
