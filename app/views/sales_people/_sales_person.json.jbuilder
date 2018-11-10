json.extract! sales_person, :id, :last_name, :first_name, :manager_id, :created_at, :updated_at
json.url sales_person_url(sales_person, format: :json)
