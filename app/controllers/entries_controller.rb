class EntriesController < ApplicationController
	respond_to :json

	def index
		respond_with Entry.last(8)
	end

	def show
		respond_with Entry.find(params[:id])
	end

	def create
		respond_with Entry.create(params[:entry])
	end

	def update
		respond_with Entry.update(params[:id], params[:entry])
	end

	def destroy
		respond_with Entry.destroy(params[:id])
	end

	def latest
		if (params[:id])
			respond_with Entry.where("id > ?", params[:id]) 
		else
			respond_with []
		end
	end

end
