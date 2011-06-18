class ClientsController < ApplicationController
  def index
    conditions = ["first_name LIKE ? OR last_name LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%"] unless params[:query].nil?
    @clients = Client.all(:conditions => conditions)
  end

  def new
    @client =  Client.new
  end

  def create
    @client = Client.new(params[:client])
    @client.save
     redirect_to  clients_path
   # @category = Category.find(params[:category][:id])
   # @article.category = @category
   #  @article.author = current_user.id
  end


  def show
    @client = Client.find(params[:id])
  end

  def destroy
      Client.find(params[:id]).destroy
      redirect_to  clients_path
  end


  def edit
    @client = Client.find(params[:id])
  end

  def update
   @client = Client.find(params[:id])
   if @client.save
    redirect_to  clients_path
    flash[:notice] = 'Modification valide !'
   else
     flash[:error] = 'Une erreur est survenue.'
     redirect_to :edit
   end
  end
  
  def calendar
     @formations = Formation.all
  end

  def suivi
     @h = HighChart.new('graph') do |f|
    f.series(:name=>'John', :data=>[3, 20, 3, 5, 4, 10, 12 ,3, 5,6,7,7,80,9,9])
    f.series(:name=>'Jane', :data=> [1, 3, 4, 3, 3, 5, 4,-46,7,8,8,9,9,0,0,9] )
  end
  end
end
