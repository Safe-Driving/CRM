class PlacesController < ApplicationController
  def new
      @place =  Place.new
    end

    def create
      @place = Place.new(params[:place])
      @place.save
       redirect_to  places_path
     # @category = Category.find(params[:category][:id])
     # @article.category = @category
     #  @article.author = current_user.id
     end

def destroy
      Place.find(params[:id]).destroy
      redirect_to  places_path
end

def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end


  def edit
    @place = Place.find(params[:id])
  end

  def update
   @place = Place.find(params[:id])
   @name = params[:place][:name]
   @city = params[:place][:city]
   @address = params[:place][:address]
   @place.name = @name
   @place.city = @city
   @place.address = @address

   if @place.save
    redirect_to  places_path
    flash[:notice] = 'Agency was successfully updated.'
   else
     flash[:error] = 'Agency was not updated.'
     redirect_to :edit
   end
  end
end
