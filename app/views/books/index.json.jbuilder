json.array!(@books) do |book|
  json.extract! book, :id, :title, :number_of_page
  json.url book_url(book, format: :json)
end
