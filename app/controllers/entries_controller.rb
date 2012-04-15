class EntriesController < ApplicationController
	respond_to :json

	def index
		respond_with Entry.last(20)
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
		#respond_with Entry.find(:all, :conditions =>["id > ?", params[:id]]) if (params[:id].to_i)
		if (params[:id])
			respond_with Entry.where("id > ?", params[:id]) 
		else
			respond_with []
		end
	end

end
