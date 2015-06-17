class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params["item"].permit(:pic))
		@item.user = current_user

		if @item.save
			redirect_to '/items'
		else
			render :index
		end
	end

end