require 'test_helper'
require 'json'
class BooksRackTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
     Rails.application
  end

  test "should return valid json" do
    get '/books.json'
    assert last_response.ok?
    body = JSON.parse(last_response.body)
    assert_not_nil body
  end

end