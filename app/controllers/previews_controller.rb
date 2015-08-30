class PreviewsController < ApplicationController
	def index
		@avances = Preview.all
	end
	def edit
		@avance = Preview.find(params[:id])
	end
	def new
		@avance = Preview.new
	end
	def create 
		@avance = Preview.new(preview_params)
		@avance.save
		redirect_to previews_path
	end
	def show
		@avance = Preview.find(params[:id])
	end
	def update
		@avance = Preview.find(params[:id])
		@avance.update(preview_params)
		redirect_to previews_path
	end
	def destroy
		@avance = Preview.find(params[:id])
		@avance.destroy
		redirect_to previews_path
	end
	private 
	def preview_params
		params.require(:preview).permit(:avatar)
	end
end
