json.extract! manager, :id, :last_name, :first_name, :manager_type_id, :created_at, :updated_at
json.url manager_url(manager, format: :json)
