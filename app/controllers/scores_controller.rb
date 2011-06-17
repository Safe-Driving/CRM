class ScoresController < ApplicationController
  def new
    @score = TestsScore.new
  end

  def create
    @score = TestsScore.new(params[:score])
    @score.save
    redirect_to scores_path
  end

  def index
    @scores = TestsScore.all
  end

  def edit
    @score = TestsScore.find(params[:id])
  end
  
  def update
    @score = TestsScore.find(params[:id])
    if @score.save
      redirect_to  scores_path
      flash[:notice] = 'Modification valide !'
     else
       flash[:error] = 'Une erreur est survenue.'
       redirect_to :edit
     end
  end

  def show
    @score = TestsScore.find(params[:id])
  end

  def destroy
    @score = TestsScore.find(params[:id])
    redirect_to scores_path
  end
  

end
