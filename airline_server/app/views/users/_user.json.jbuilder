json.extract! user, :id, :created_at, :updated_at, :name, :email, :password, :password_digest, :admin
json.url user_url(user, format: :json)
