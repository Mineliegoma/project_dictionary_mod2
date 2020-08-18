class QuotesController < ApplicationController
    @@list_of_quotes = Quote.all

   def index
    @quotes = @@list_of_quotes.to_a.pop(5)
   end





end
