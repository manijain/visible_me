json.extract! community, :id, :name, :description, :is_active, :logo_url, :community_type, :created_at, :updated_at
json.url community_url(community, format: :json)
