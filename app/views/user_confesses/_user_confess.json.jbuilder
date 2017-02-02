json.extract! user_confess, :id, :lover_name, :lover_sex, :cf_title, :cf_body, :created_at, :updated_at
json.url user_confess_url(user_confess, format: :json)