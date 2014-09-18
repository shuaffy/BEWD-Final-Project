class UrlsController < ApplicationController

  def new
    @url = Url.new		
  end

  def create
    # Url(id: integer, link: string, hash_code: integer, created_at: datetime, updated_at: datetime)
    @url = Url.new
    @url.link = params[:link]
    @url.hash_code = rand(1..1000000)
    if @url.save
      redirect_to "/#{@url.hash_code}"  #get '/:hash_code', to: 'urls#show'
    else
      render :new
    end  	
  end

  def show
    @url = Url.search_for(params[:hash_code])
  end

  def preview
  	@url = Url.get_link(params[:link])
    redirect_to "http://" + @url.last.link || "https://" + @url.last.link 
  end
end
