class ContentController < ApplicationController
  def index

  end
  
  def import
    @email = params[:email]
    @user = Client.find_by_email(@email)
    if @user.nil?
      @json = fetch_url "http://safedriving.heroku.com/users.js?email=" + @email 
      @json = @json.gsub("user", "client")
      @jsonparsed = JSON.parse(@json)
      @user_json = @jsonparsed['client']
     
      @email = @user_json['email']
      @encrypted_password = @user_json['encrypted_password']
      @last_name = @user_json['last_name']
      @first_name = @user_json['first_name']
      
      @new_user = Client.new
      @new_user.email = @email
      @new_user.encrypted_password = @encrypted_password
      @new_user.last_name = @last_name
      @new_user.first_name = @first_name 
      
      @new_user.save!
      raise @new_user.id.inspect  
    
      #@created_user = Client.find_by_email(@email)
      #raise @created_user.inspect
      #redirect_to edit_client_path(@new_user.id)
    flash[:notice] = "l'utilisateur a ete importe"
     else
       flash[:error] = "l'utilisateur existe deja"
       redirect_to :root
     end    
  end
  
  def prepare
  end
  
  def go_import
      redirect_to import_path(params[:email])
  end
  
  def fetch_url(url)
      r = Net::HTTP.get_response( URI.parse( url ) )
      if r.is_a? Net::HTTPSuccess
        r.body
      else
        nil
      end
  end

  
end
