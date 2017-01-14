class WelcomeController < ApplicationController
   def index
     flash[:notice] = "你好，moto"
   end 
end
