class CartsController < ApplicationController
    def index
      cart = Cart.find(params[:id])
      render json: cart
    end
  
    def create
      cart = Cart.create
      render json: cart
    end
  
    def checkout
      cart = Cart.find(params[:id])
      order = cart.build_order
      order.save
      render json: order
    end
end
  