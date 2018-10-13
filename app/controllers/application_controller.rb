class ApplicationController < ActionController::Base
  def index
    @articulos = Articulo.all
  end
  
  def show
    @articulos = Articulo.find(params[id])
  end
  def new
  end
  #abreviar
  
  protect_from_forgery with: :exception
end
