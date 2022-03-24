class ClientsController < ApplicationController

  def index
    clients = Client.all
    render json: clients
  end

  def create
    client = Client.new(client_params)
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

  def client_params
    params.permit(:first_name, :last_name, :email, :stage, :phone, :company, :probability)
  end



end
