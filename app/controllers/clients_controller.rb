class ClientsController < ApplicationController

  def index
    clients = Client.all
    render json: clients
  end

  def create
    client = Client.new
    if client.save
      render json: { message: 'Client Saved!' }
    else
      render json: { message: client.errors.full_messages }
    end
  end

  def update

  end

  def delete
    
  end

end
