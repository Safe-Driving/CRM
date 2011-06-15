class VehiclesController < ApplicationController
  def new
       @vehicle =  Vehicle.new
     end

     def create
       @vehicle = Vehicle.new(params[:vehicle])
        #@vehicle.agency = current_leader.agency

       @vehicle.save
        redirect_to  vehicles_path
      # @category = Category.find(params[:category][:id])
      # @article.category = @category
      #  @article.author = current_user.id
      end

 def destroy
       Vehicle.find(params[:id]).destroy
       redirect_to  vehicles_path
 end

 def index
     @vehicles = Vehicle.all
   end

   def show
     @vehicle = Vehicle.find(params[:id])
   end


   def edit
     @vehicle = Vehicle.find(params[:id])
   end

   def update
    @vehicle = Vehicle.find(params[:id])
    @categ = params[:vehicle][:category]
    @brand = params[:vehicle][:brand]
    @model = params[:vehicle][:model]
    @vehicle.category = @categ
    @vehicle.brand = @brand
    @vehicle.model = @model

    if @vehicle.save
     redirect_to  vehicles_path
     flash[:notice] = 'vehicle was successfully updated.'
    else
      flash[:error] = 'vehicle was not updated.'
      redirect_to :edit
    end
   end
 end

