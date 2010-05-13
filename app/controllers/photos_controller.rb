class PhotosController < ApplicationController
  respond_to :html, :xml
  
  def new
    @photo = Photo.new
  end
  
  def index
    #@photos = Photo.all
     
     @photos = Photo.where("title = 'john hall'")
       
     @photos = @photos.where("title like '%john%'") if params[:foo]
     
     # @photos.all
     
    
    respond_with @photos
  end
  
  def create
    @photo = Photo.new(params[:photo])
    
    if @photo.save
      redirect_to photos_path
    else
      render :action => :new
    end
  end
  
  # def show
  #   @photo = Photo.find(params[:id])
  #   
  #   respond_with(@photo)
  # end   
  
end
