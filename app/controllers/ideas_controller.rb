class IdeasController < ApplicationController

  def index
    #form for params view, to submit an idea
    #form for params click to see a random idea be generated from DB
    #view area for this to show up
    if params[:thing] == 'next'
      render :partial => "ideagene"
    end
  end
end
