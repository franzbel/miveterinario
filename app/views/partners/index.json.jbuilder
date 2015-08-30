json.array!(@partners) do |partner|
  json.extract! partner, :id, :clinic, :doctor, :address, :phone, :cell, :email, :web
  json.url partner_url(partner, format: :json)
end
