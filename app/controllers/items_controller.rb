class ItemsController < ApplicationController
	
	#GET '/items'
	def index
		@item = Item.all
	end

	#GET '/items/new'
	def new
		@new_item = Item.new
	end

	#POST '/items'
	def create
		@new_item = Item.new(item_params)
		if @new_item.save
			redirect_to items_path # '/items'
		end
	end

	#GET '/items/:id'
	def show
		@item = Item.find(params[:id])
	end

	#GET '/items/:id'
	def edit
		@item = Item.find(params[:id])
	end

	#PATCH/PUT '/items/:id'
	def update
		@item = Item.find(params[:id])
		if @item.update_attributes(item_params)
			redirect_to "/items"
		end
	end

	#DELETE '/items/:id'
	def destroy
    @item = Item.find(params[:id])
    @item.delete
    	redirect_to "/items"
  end

	private

	def item_params
		params.require(:item).permit(:item_name, :item_price, :item_age, :item_sold) 
	end

end
