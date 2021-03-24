class ProductsController < ApplicationController
    def add
        item = Product.find_or_create_by(name: params[:product])
        # Load the cart from the session, or create a new empty cart.
        cart << item.name
        redirect_to '/'
    end
    def index

        @cart = cart   
    end

end
