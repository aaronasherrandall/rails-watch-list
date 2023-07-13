class ListsController < ApplicationController

  def index
    @lists = List.all
    @movies = Movie.all
  end

  def show
    @list = List.find(params[:id])
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    # Use Cloudinary's upload method to upload the image
    image = params[:list].delete(:image)
    upload = Cloudinary::Uploader.upload(image.path)

    # Create a new list, assigning the returned URL to image_url
    @list = List.new(list_params.merge(image_url: upload['url']))

    if @list.save
      redirect_to list_path(@list), notice: 'List was successfully created.'
    else
      # Add your logic for what should happen if the list can't be saved
    end
  end

  private

  def list_params
    params.require(:list).permit(:name) # Include other params as needed
  end
end
