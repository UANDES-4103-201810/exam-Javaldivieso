class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
   @pizzas = Pizza.all
  end

end
