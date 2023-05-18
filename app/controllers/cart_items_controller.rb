class CartItemsController < ApplicationController
    def index
      cart = Cart.find(params[:cart_id])
      cart_items = cart.cart_items
      render json: cart_items
    end
  
    def create
      cart = Cart.find(params[:cart_id])
      item = Item.find(params[:item_id])
      cart_item = cart.cart_items.build(item: item, quantity: params[:quantity])
      cart_item.save
      render json: cart_item
    end
  
    def update
      cart_item = CartItem.find(params[:id])
      cart_item.update(quantity: params[:quantity])
      render json: cart_item
    end
  
    def destroy
      cart_item = CartItem.find(params[:id])
      cart_item.destroy
      render json: { message: 'Cart item removed' }
    end
end
  