class ClientsController < ApplicationController

  # errors.full_messages is for troubleshooting and will not be included in production

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
    client = Client.find_by_id(params[:id])
    if client.update(client_params)
      render json: { message: 'Client updated', client: client }
    else
      render json: { message: 'Client not updated', errors: client.errors.full_messages }
    end
  end

  def destroy
    client = Client.find_by_id(params[:id])
    if !client
      render json: { message: 'Client not found', errors: client.errors.full_messages }
    else
      client.delete
      render json: { message: 'Client deleted' }
    end
  end

  def client_params
    params.permit(:first_name, :last_name, :email, :stage, :phone, :company, :probability)
  end

end
