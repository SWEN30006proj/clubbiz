json.array!(@societies) do |society|
  json.extract! society, :id, :society_name, :registration_number, :club_website, :club_nickname, :password, :president_name, :president_phone_number, :president_email, :treasurer_name, :treasurer_phone_number, :treasurer_email, :club_biz_administrator_name, :club_biz_administrator_phone_number, :club_biz_administrator_email
  json.url society_url(society, format: :json)
end
