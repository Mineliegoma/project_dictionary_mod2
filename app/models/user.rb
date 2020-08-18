class User < ApplicationRecord
    has_many :favorites
    has_many :quotes , through: :favorites

    def add_to_favorites(quote)
        self.quotes << quote

    end


    def random_quotes
        Quote.all.sample(10)
    end

    
    def remove_favorite(quote)
        self.favorites.delete_if {|favorite| favorite.quote_id == quote.id}
    end

    def list_favorites
        self.quotes
    end

    def self.quote_of_day
        Quote.all.sample
    end 

end
