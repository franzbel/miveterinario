class SponsorsController < ApplicationController
	before_action :es_administrador
	def index
		@patrocinadores = Sponsor.all
	end
	def edit
		@patrocinador = Sponsor.find(params[:id])
	end
	def new
		@patrocinador = Sponsor.new	
	end
	def create
		# render :text=>params[:sponsor]
		@patrocinador = Sponsor.new(sponsor_params)
		@patrocinador.save
		redirect_to @patrocinador
	end
	def show
		@patrocinador = Sponsor.find(params[:id])
	end
	def update
		@patrocinador = Sponsor.find(params[:id])
		@patrocinador.update(sponsor_params)
		# redirect_to @patrocinador
		redirect_to sponsors_path
	end
	def destroy
		@patrocinador = Sponsor.find(params[:id])
		@patrocinador.destroy
		redirect_to sponsors_path
	end
	private
	def sponsor_params
		params.require(:sponsor).permit(:avatar, :name, :description)
	end
	def es_administrador
		redirect_to root_path unless current_user.admin?
	end
end
