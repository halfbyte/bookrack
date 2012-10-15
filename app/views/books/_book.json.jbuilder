# _book.json.jbuilder
json.book do
  json.id book.id
  json.title book.title
  json.author book.author
  json.comments(book.comments) do |json, comment|
    json.partial! comment
  end
end