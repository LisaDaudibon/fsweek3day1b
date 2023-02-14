

class GossipController < ApplicationController
  def home

  end

  def contact
  end

  def team
  end

  def welcome
    @user = User.find(params[:id])
  end
  
  def find

  end
end
