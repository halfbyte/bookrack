class BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :_links
  has_many :comments

  def _links
    [
      {:rel => 'self', href: book_path(object, :format => :json)},
      {:rel => 'self', href: book_comments_path(object, :format => :json)}

    ]
  end

end
