class AdaptationsController < ApplicationController

  def index
    @adaptations = Adaptation.all
  end

  def show
    @adaptation = Adaptation.find(params[:id])
  end

  def new
    @adaptation = Adaptation.new
  end

  def create
    @adaptation = Adaptation.create(adaptation_params)
    redirect_to adaptations_path
  end

  def edit
    @adaptation = Adaptation.find(params[:id])
  end

  def update
    @adaptation = Adaptation.find(params[:id])
    @adaptation.update(adaptation_params)
    redirect_to adaptation_path
  end

  def destroy
    @adaptation = Adaptation.find(params[:id])
    @adaptation.destroy
    redirect_to adaptations_path
  end

  private
  def adaptation_params
    params.require(:adaptation).permit(:title, :date_of_release, :image_url, :comparison_to_book, :book_id)
  end
end
