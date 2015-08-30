class PagesController < ApplicationController
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @page  = Page.new
    @last_page = @magazine.pages.last
  end

  def create
    magazine = Magazine.find(params[:magazine_id])
    page = Page.new(page_params)
    magazine.pages << page

    redirect_to new_magazine_page_path
  end
  private
  def page_params
    params.require(:page).permit(:avatar)
  end
end
