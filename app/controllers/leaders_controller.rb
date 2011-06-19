class LeadersController < ApplicationController
  #load_and_authorize_resource
  def index
    @leaders = Leader.all
  end

  def new
    @leader =  Leader.new
  end

  def create
    @leader = Leader.new(params[:leader])
    @leader.save
     redirect_to  leaders_path
   # @category = Category.find(params[:category][:id])
   # @article.category = @category
   #  @article.author = current_user.id
  end


  def show
    @leader = Leader.find(params[:id])
  end

  def destroy
      Leader.find(params[:id]).destroy
      redirect_to  leaders_path
  end


  def edit
    @leader = Leader.find(params[:id])
  end

  def update
   @leader = Leader.find(params[:id])
   if @leader.save
    redirect_to  leaders_path
    flash[:notice] = 'Modification valide !'
   else
     flash[:error] = 'Une erreur est survenue.'
     redirect_to :edit
   end
  end

  def calendar
     @formations = Formation.all
  end

end
