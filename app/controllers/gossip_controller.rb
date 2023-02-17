
class GossipController < ApplicationController
  def index
    @gossips=Gossip.all.order(:id)
  end

  

  def new

  end

  def create
    @gossip = Gossip.new('first_name' => params[:first_name],
                     'title' => params[:title],
                     'content' => params[:content])
  
    if @gossip.save
      redirect_to gossip_path
    else
      render 'new'
    end
  end

  def show
  end

  # def show
  #   @id = params[:id].to_i
  #   @gossip = Gossip.find(@id)
  #   @author = User.find(@gossip.user_id)
  # end

  def edit

  end

  def updated

  end

  def destroy

  end
end
