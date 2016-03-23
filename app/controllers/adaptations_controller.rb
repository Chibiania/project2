class AdaptationsController < ApplicationController

  def index
    @adaptations = Adaptation.all
  end

  def show
    @adaptation = Adaptation.find(params[:id])
  end

  def new
    redirect_to root_path unless @current_user
    @book = Book.find(params[:book_id])
    @adaptation = @book.adaptations.new
  end

  def create
    redirect_to root_path unless @current_user
    @book = Book.find(params[:book_id])
    @adaptation = @book.adaptations.new(adaptation_params)
    @adaptation.user = @current_user
    @adaptation.save
    redirect_to @adaptation
  end

  def edit
    redirect_to root_path unless @current_user
    @adaptation = Adaptation.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user
    @adaptation = Adaptation.find(params[:id])
    @adaptation.update(adaptation_params)
    redirect_to adaptation_path
  end

  def destroy
    redirect_to root_path unless @current_user
    @adaptation = Adaptation.find(params[:id])
    @adaptation.destroy
    redirect_to adaptations_path
  end

  private
  def adaptation_params
    params.require(:adaptation).permit(:title, :date_of_release, :image_url, :comparison_to_book, :book_id)
  end
end
