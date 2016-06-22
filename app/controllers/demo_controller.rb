class DemoController < ApplicationController
  
  layout false

  def index
  	# render(:template => 'demo/hello') # :template é opcional	
  	# render('hello')
  end

  def hello
  	# render(:template => 'demo/index')
 	@array = [1,2,3,4,5]	
 	@id = params[:id].to_i
 	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index') # redirecionar para o controller 'demo' e para a view 'index'
  end

  def google
  	redirect_to("http://google.com") # redirecionar para alguma url qualquer
  end
end
