class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  	@name = params[:name]
  end

  def index
  end

  def adeline
  	
  end

  def binome
  	
  end
end
