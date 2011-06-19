class FormationsController < ApplicationController
  def new
        @formation =  Formation.new
  end

  def create
          params[:formation][:place] =  Place.find(params[:formation][:place])
          params[:formation][:date] = Date.today
          params[:formation][:datefin] = Date.today+1

                  @formation = Formation.new(params[:formation])
         @formation.vehicles.push(Vehicle.find(params[:formation][:vehicle]))
         @formation.leaders.push(Leader.find(params[:formation][:trainer]))
         @formation.places.push(Place.find(params[:formation][:place]))

        #@formation.agency = current_leader.agency
        @formation.save.inspect
        redirect_to  formations_path
       # @category = Category.find(params[:category][:id])
       # @article.category = @category
       #  @article.author = current_user.id
   end

  def destroy
        Formation.find(params[:id]).destroy
        redirect_to  formations_path
  end

  def index
      @formation = Formation.all
    end

    def show
      @formation = Formation.find(params[:id])
    end


    def edit
      @formation = Formation.find(params[:id])
    end

    def update
     @formation = Formation.find(params[:id])


     if @formation.save
      redirect_to  formations_path
      flash[:notice] = 'formation was successfully updated.'
     else
       flash[:error] = 'formation was not updated.'
       redirect_to :edit
     end
    end

  def formation_list
      @formation = Formation.all
  end

  def participer
    forma = Formation.find(params[:id])
    current_user.formations.push(forma)
    redirect_to formation_participation_path
  end

  end
