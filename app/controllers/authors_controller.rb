class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
  if @author.valid?

     @author.save

    redirect_to author_path(@author)
  else
    @author = Author.create!(author_params)
  end

  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
