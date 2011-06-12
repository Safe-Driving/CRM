class AgenciesController < ApplicationController
  def new
    @agency =  Agency.new
  end

  def create
    @agency = Agency.new(params[:agency])
    @agency.save
     redirect_to  agencies_path
   # @category = Category.find(params[:category][:id])
   # @article.category = @category
   #  @article.author = current_user.id
   end


  def index
    @agencies = Agency.all
  end

  def show
    @agency = Agency.find(params[:id])


  end

  def destroy
      Agency.find(params[:id]).destroy
      redirect_to  agencies_path
  end


  def edit
    @agency = Agency.find(params[:id])
  end

  def update
   @agency = Agency.find(params[:id])
   @city = params[:agency][:city]
   @address = params[:agency][:address]
   @agency.city = @city
   @agency.address = @address

   if @agency.save
    redirect_to  agencies_path
    flash[:notice] = 'Agency was successfully updated.'
   else
     flash[:error] = 'Agency was not updated.'
     redirect_to :edit
   end
  end

end
