class OrderController < ApplicationController
	def new
		order = Order.new
		order.name = params[:name]
		order.phone = params[:phone]
		order.text = params[:text]
		order.save
		#UserMailer.new_order_email(order).deliver
		render nothing: true
	end
end
