# books/index.json.rabl
collection @books

attributes :id, :title, :author

child :comments do 
  attributes :text, :name
end