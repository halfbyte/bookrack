require 'test_helper'
require 'json'

class BooksTest < ActionDispatch::IntegrationTest
  test "books.json should return valid json" do
    get "/books.json"
    body = JSON.parse(response.body)
    assert_not_nil body
    assert_equal 200, status
  end


  test "books.json should return array of books" do
    get "/books.json"
    body = JSON.parse(response.body)
    assert body.kind_of?(Array)
  end

  # test "the truth" do
  #   assert true
  # end
end
