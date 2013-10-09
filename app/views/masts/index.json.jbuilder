json.array!(@masts) do |mast|
  json.extract! mast, :name, :
  json.url mast_url(mast, format: :json)
end
