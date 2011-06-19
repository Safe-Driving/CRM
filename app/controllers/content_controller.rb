class ContentController < ApplicationController
  def index

  end
  
  def import
    @json = fetch_url "http://safedriving.heroku.com/users.js?email=" + params[:email] 
    @parsed_json = ActiveSupport::JSON.decode(@json)
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
