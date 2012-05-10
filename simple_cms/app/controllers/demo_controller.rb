class DemoController < ApplicationController
  def index
      #render(:template =>'demo/html')
      # render('demo/html')
      #render ('hello')
      #redirect (:controller=> 'demo',:action =>'other_hello')
      #redirect_to (:action =>'other_hello')
  end
  
  def hello
      #render (:text =>"this is from hello")
      #redirect_to ("http://www.google.com")
      @array =[1,2,3,4,5] 
      @id = params[:id]
      @page = params[:page].to_i
  end 
  
  def other_hello
    render(:text =>"this is from hello inside other hello")
  end
  
end
