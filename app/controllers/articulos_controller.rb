class ArticulosController < ApplicationController
  
  
  def create
  @articulo = Articulo.new(articulo_params)
 
  @articulo.save
  redirect_to @articulo
end
 
  def show
    @articulo =Articulo.find(params[:id])
  end
  
  def new
  end
  
  
private
  def articulo_params
    params.require(:articulo).permit(:titular, :contenido)
  end
 
 
  
  
end
  