class StartuppageController < ApplicationController

  def index
    if signed_in?
      redirect_to :controller=> 'home_page' , :action => 'student_view'
    end



    end


end
