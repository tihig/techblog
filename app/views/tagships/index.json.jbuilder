json.array!(@tagships) do |tagship|
  json.extract! tagship, :id, :post_id, :tag_id
  json.url tagship_url(tagship, format: :json)
end
