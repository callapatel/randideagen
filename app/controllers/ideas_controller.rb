class IdeasController < ApplicationController

  def index
    #form for params view, to submit an idea
    if params[:thing] == 'next'
      render :partial => "ideagene"
    end
  end
end
