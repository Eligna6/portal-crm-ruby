json.extract! prospect, :id, :email, :name, :phone, :status, :entered_by, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
