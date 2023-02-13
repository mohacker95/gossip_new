

class WelcomeController < ApplicationController
  def welcome_customize
      @user = params[:id] 
  end
  
  def welcome_display
  end
end
