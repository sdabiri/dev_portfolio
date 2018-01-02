json.extract! blog_feature, :id, :title, :body, :created_at, :updated_at
json.url blog_feature_url(blog_feature, format: :json)
