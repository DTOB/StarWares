json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :city, :country, :postal_code, :email, :province_id, :created_at, :updated_at
  json.url customer_url(customer, format: :json)
end
