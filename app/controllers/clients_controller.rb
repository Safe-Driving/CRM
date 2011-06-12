class ClientsController < ApplicationController
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


    def index
      @clients = Client.all
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
     @email = params[:client][:email]
     @encrypted_password = params[:client][:encrypted_password]
     @first_name = params[:client][:first_name]
     @last_name = params[:client][:last_name]
     @has_code = params[:client][:has_code]
     @has_car_permit = params[:client][:has_car_permit]
     @has_moto_permit = params[:client][:has_moto_permit]
     @passing_code = params[:client][:passing_code]
     @passing_car_permit = params[:client][:passing_car_permit]
     @passing_moto_permit = params[:client][:passing_moto_permit]
     @agency = params[:client][:agency];

     @client.email = @email
     @client.encrypted_password = @encrypted_password
     @client.first_name = @first_name
     @client.last_name = @last_name
     @client.has_code = @has_code
     @client.has_car_permit = @has_car_permit
     @client.has_moto_permit = @has_moto_permit
     @client.passing_code = @passing_code
     @client.passing_car_permit = @passing_car_permit
     @client.passing_moto_permit = @passing_moto_permit
     @client.agency = @agency

     if @client.save
      redirect_to  clients_path
      flash[:notice] = 'Client was successfully updated.'
     else
       flash[:error] = 'Client was not updated.'
       redirect_to :edit
     end
    end

end
