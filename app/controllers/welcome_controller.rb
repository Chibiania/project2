class WelcomeController < ApplicationController
  def index
    @books = Book.order("RANDOM()").limit(3)
    @adaptations = Adaptation.order("RANDOM()").limit(3)
  end
end
