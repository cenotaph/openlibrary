module Openlibrary
  module Authors 
    # Find authors in Open Library by their key 
    #
    def author(key)
      data = request("/authors/#{key}.json")
      Hashie::Mash.new(data)
    end
  end
end
