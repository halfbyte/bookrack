# index.json.jbuilder
json.(@books) do |json, book|
  json.partial! book
end