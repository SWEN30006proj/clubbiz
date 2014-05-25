class CreateSocieties < ActiveRecord::Migration

  def change

    create_table :societies do |t|
      t.string :society_name
      t.string :registration_number
      t.string :club_website
      t.string :club_nickname
      t.string :password
      t.string :president_name
      t.string :president_phone_number
      t.string :president_email
      t.string :treasurer_name
      t.string :treasurer_phone_number
      t.string :treasurer_email
      t.string :club_biz_administrator_name
      t.string :club_biz_administrator_phone_number
      t.string :club_biz_administrator_email

      t.timestamps
    end
  end
end
