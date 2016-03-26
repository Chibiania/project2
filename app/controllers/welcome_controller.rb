class WelcomeController < ApplicationController
  def index
    @books = Book.order("RANDOM()").limit(3)
    # Didn't know you could do this!
    @adaptations = Adaptation.order("RANDOM()").limit(3)
  end
end
