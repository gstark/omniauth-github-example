json.array!(@books) do |book|
  json.extract! book, :id, :title, :page_count
  json.url book_url(book, format: :json)
end
