class IdeasController < ApplicationController

  def index
    #form for params view, to submit an idea
    if params[:thing] == 'next'
      render :ideagene
    end
  end

  def new
    @idea = Idea.new(params.require(:idea).permit(:name))
    if @idea.save
      redirect_to root_path
    else
      render :new
    end
  end

  def ideagene

  end

  def taken
    Idea.find_by(name: params[:info]).destroy
  end
end
