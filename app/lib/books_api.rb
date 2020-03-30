module BooksApi
    extend self
    def get_url(keyword)
        if keyword == "" || keyword == nil
            render action: :search
        else
            url = URI.encode("https://www.googleapis.com/books/v1/volumes?q=#{keyword}&country=JP&maxResults=15")
            response = HTTParty.get(url)
        end
    end
end