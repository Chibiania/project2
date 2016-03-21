class AdaptationsController < ApplicationController

  def index
    @adaptations = Adaptation.all
  end

  def show
    @adaptation = Adaptation.find(params[:id])
  end

  def new
  end

  def edit
  end
end
