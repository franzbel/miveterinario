class MasterController < ApplicationController

  def home
  	@patrocinadores = Sponsor.all
  	@avances = Preview.all
  end
  def control_panel
  	
  end

  def magazines
    @revista = Magazine.all.first
    @paginas = @revista.pages
  end
end
