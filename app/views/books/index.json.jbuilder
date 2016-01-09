json.array!(@books) do |book|
  json.extract! book, :id, :bookname, :author, :press, :isbn, :renter_id, :borrower, :explanation, :status, :type, :extend
  json.url book_url(book, format: :json)
end
