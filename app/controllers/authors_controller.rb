class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    #name: params[:author][:name], date_of_birth: params[:author][:date_of_birth]
    @author = Author.new(author_params)
    @author.save
    redirect_to author_path(@author)
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to author_path(@author) 
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_path
  end
  

  private	
  def author_params
    params.require(:author).permit(:name, :date_of_birth)
  end

end

