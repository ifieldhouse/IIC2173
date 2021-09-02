json.extract! request, :id, :product, :amount, :intention, :time, :created_at, :updated_at
json.url request_url(request, format: :json)
