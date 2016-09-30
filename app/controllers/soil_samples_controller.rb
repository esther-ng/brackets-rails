class SoilSamplesController < ApplicationController
  def index
    @samples = SoilSample.all
  end

  def show
    @sample = SoilSample.find(params[:id])
  end

  def new
    @sample = SoilSample.new
  end

  def edit # this is the form, like new
    @sample = SoilSample.find(params[:id])
  end

  def update # this is like create, and like create on the model, makes the change and immediately saves it
    @sample = SoilSample.find(params[:id])
    @sample.update(soil_params)

    if @sample.save
      # SAVED SUCCESSFULLY
      redirect_to soil_samples_path
    else
      # DID NOT SAVE, render vs redirect means they don't have to type everything back in? don't want to refresh all the data they potentially put in
      render :edit
    end
  end

  def create
    @sample = SoilSample.new(soil_params)
    # @sample.location = params[:soil_sample][:location]
    # @sample.scientist = params[:soil_sample][:scientist]

    if @sample.save
      # SAVED SUCCESSFULLY
      redirect_to soil_samples_path
    else
      # DID NOT SAVE, render vs redirect means they don't have to type everything back in? don't want to refresh all the data they potentially put in
      render :new
    end
  end
  # def confirm_deletion
  #   @sample = SoilSample.find(params[:id])
  # end
  def destroy
    SoilSample.find(params[:id]).destroy
    redirect_to soil_samples_path
  end

  private

  def soil_params #permit and require certain parameters that we know and trust
    params.require(:soil_sample).permit(:location, :scientist, :is_wet)
  end

end
