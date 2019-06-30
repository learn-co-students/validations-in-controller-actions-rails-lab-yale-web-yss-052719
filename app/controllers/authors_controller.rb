class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    # shows a author
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
      # sucessfully creates an author, redirect to show page
    else
      render :new
      # otherwise, render new page again
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
