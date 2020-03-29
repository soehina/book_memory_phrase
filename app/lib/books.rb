module Books
    require 'net/http'
    require 'uri'
    require 'json'
    require 'httparty'

    def results_index
        return @results = @@results
    end

    def url_from_keyword
        if params[:keyword] == "" || params[:keyword] == nil
            render action: :new
        else
            keyword = params[:keyword]
            url = URI.encode("https://www.googleapis.com/books/v1/volumes?q=#{params[:keyword]}&country=JP&maxResults=30")
            response = HTTParty.get(url)
            return @@results = response.parsed_response
            # redirect_to(new_post_path)
        end
    end
end
