json.extract! membership_pkg, :id, :name, :price, :amenities, :created_at, :updated_at
json.url membership_pkg_url(membership_pkg, format: :json)
