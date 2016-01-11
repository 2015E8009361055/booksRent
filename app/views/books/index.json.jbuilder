json.array!(@books) do |book|
  json.extract! book, :id, :bookname, :author, :press, :isbn, :user_id, :borrower, :explanation, :status, :booktype, :extend
  json.url book_url(book, format: :json)
end
