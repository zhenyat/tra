class PagesController < ApplicationController
  def home
    @domain = ZtBtce.get_domain
    @key    = ZtBtce.get_key
    
    asterisks =''
    for i in (0..59)
      asterisks[i]= '*'
    end
    @secret = "#{asterisks}#{ZtBtce.get_secret[-4..-1]}"
  end
end
