

class GossipController < ApplicationController
  def home
  end

  def contact
  end

  def team
  end

  def méthode
    @user = User.find(params[:un_nom_de_variable])
  end
end
