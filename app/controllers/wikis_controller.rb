class WikisController < ApplicationController
  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new
    @wiki.title = params[:wiki][:title]
    @wiki.body = params[:wiki][:body]

    if @wiki.save
      flash[:notice] = "Post was saved!"
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the Wiki! Try again!"
      render :new
    end
  end


  def edit
  end
end
