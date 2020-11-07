class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end
  def create
    @breed = Breed.new(breed_params.except(:category))
    @breed.category = breed_params[:category].split(",")
    if @breed.save
      redirect_to breeds_path
    else
      render :new
    end
  end
  
  def new
    @breed = Breed.new
  end
  
  private

  def breed_params
    params.require(:breed).permit(:nameofbreed, :category)
  end  
end
