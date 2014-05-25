class StartuppageController < ApplicationController

  def index
    if signed_in?
      redirect_to :controller=> 'studenthomepage' , :action => 'index'
    end



    end


end
