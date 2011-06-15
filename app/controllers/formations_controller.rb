class FormationsController < ApplicationController
  def new
        @formation =  Formation.new

  end

  def create
        @formation = Formation.new(params[:formation])
        #@formation.agency = current_leader.agency
        @formation.save
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
  end
