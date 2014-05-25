class SearchController < ApplicationController
  def index

    @clubs_data1 = []
    # If the search param with it's whitespace stripped off
    # actually has something left then search for it
    unless params[:search].nil? || params[:search].strip.empty?
      @clubs_data1 = Society.search(params[:search])
    end

    @events_data1 = []
    # If the search param with it's whitespace stripped off
    # actually has something left then search for it
    unless params[:search].nil? || params[:search].strip.empty?
      @events_data1 = Event.search(params[:search])
    end



    @clubs_data = []
    # If the search param with it's whitespace stripped off
    # actually has something left then search for it
    unless params[:clubname].nil? || params[:clubname].strip.empty?
      @clubs_data = Society.clubname(params[:clubname])
    end



    @events_data = []
    # If the search param with it's whitespace stripped off
    # actually has something left then search for it
    unless params[:event].nil? || params[:event].strip.empty?
      @events_data = Event.event(params[:event])
    end


  end



  def list
    @clubs_data_all = Society.all
  end


end
